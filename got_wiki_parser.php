<?php

// scraped this from the ugly wiki html source listing of all the main characters using regex
// $characters = ['Eddard_Stark', 'Catelyn_Stark', 'Robb_Stark', 'Sansa_Stark', 'Arya_Stark', 'Bran_Stark', 'Rickon_Stark', 'Jon_Snow', 'Brynden_Tully', 'Edmure_Tully', 'Tywin_Lannister', 'Cersei_Lannister', 'Jaime_Lannister', 'Tyrion_Lannister', 'Joffrey_Baratheon', 'Myrcella_Baratheon', 'Tommen_Baratheon', 'Kevan_Lannister', 'Lancel_Lannister', 'Bronn', 'Qyburn', 'Pycelle', 'Petyr_Baelish', 'Varys', 'House_Tyrell', 'Margaery_Tyrell', 'Loras_Tyrell', 'Olenna_Tyrell', 'Mace_Tyrell', 'House_Bolton', 'Roose_Bolton', 'Ramsay_Bolton', 'Theon_Greyjoy', 'Walda_Bolton', 'House_Frey', 'Walder_Frey', 'Lothar_Frey', 'Walder_Rivers', 'Roslin_Frey', 'Robert_Baratheon', 'Stannis_Baratheon', 'Renly_Baratheon', 'Brienne_of_Tarth', 'Selyse_Baratheon', 'Shireen_Baratheon', 'Gendry', 'Davos_Seaworth', 'Salladhor_Saan', 'Melisandre', 'Daenerys_Targaryen', 'Viserys_Targaryen', 'Aerys_II_Targaryen', 'Rhaegar_Targaryen', 'Aemon', 'Drogo', 'Barristan_Selmy', 'Missandei', 'Grey_Worm', 'Daario_Naharis', 'Doran_Martell', 'Trystane_Martell', 'Elia_Martell', 'Oberyn_Martell', 'Ellaria_Sand', 'Obara_Sand', 'Nymeria_Sand', 'Tyene_Sand', 'Areo_Hotah', 'Gregor_Clegane', 'Sandor_Clegane', 'Beric_Dondarrion', 'Jaqen_H\'ghar','Thoros', 'Syrio_Forel', 'Craster', 'Quaithe', 'Xaro', 'Jorah_Mormont', 'Jeor_Mormont', 'Shae', 'Lysa_Arryn', 'Robin_Arryn', 'Spice_King', 'Pyat_Pree', 'Podrick_Payne', 'Ilyn', 'Janos_Slynt', 'Qhorin', 'Mance_Rayder', 'Alliser_Thorne', 'Samwell_Tarly', 'Gilly', 'Locke', 'Ygritte', 'Tormund', 'Meera_Reed', 'Jojen_Reed', 'Balon_Swann', 'Balon_Greyjoy', 'Yara_Greyjoy', 'Osha', 'Luwin', 'Hodor', 'Lord_of_Bones', 'Jon_Arryn', 'Illyrio_Mopatis', 'Gared', 'Hot_Pie', 'Lommy_Greenhands', 'Polliver', 'Lyanna_Stark', 'Mycah', 'High_Sparrow', 'Ros', 'Mhaegen', 'Armeca', 'Shagga', 'Timett', 'Chella', 'Talisa_Stark', 'Myranda', 'Violet', 'Tansy'];
// $base_url = "http://gameofthrones.wikia.com/wiki/";
// $dictionaries = [];
// 
// foreach($characters as $character):
//     $dictionaries[$character] = get_character_info($character);
// endforeach;
// echo "Total entries: " . count($dictionaries) . "\n";
// print_r($dictionaries);

// get all the info for a single character and return it as an array of key value pairs
function get_character_info($character) {
    $NODE_NAMES = ["First seen", "Also known as", "Status", "Allegiance", "Portrayed by", "Death"];
    $BASE_URL = "http://gameofthrones.wikia.com/wiki/";
    $char_dictionary = [];
    $timeout = 5;
    $url = $BASE_URL . $character;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
    $html = curl_exec($ch);
    curl_close($ch);

    $dom = new DOMDocument();

    // The @ before the method call suppresses any warnings that loadHTML might throw because of invalid HTML in the page.
    @$dom->loadHTML($html);

    $labels = getElementsByClassName($dom, 'pi-data-label');
    $values = getElementsByClassName($dom, 'pi-data-value');

    // Directly add the character name to the outputif($labels[$i] == "Name"):
    $char_dictionary["Name"] = str_replace('_', ' ', $character);

    // this wiki sucks and some of their stuff is formatted wrong valueIndex is used to fix it. See below.
    $valueIndex = 0;
    for($i = 0; $i < count($labels); $i++) {
        
        if(in_array($labels[$i], $NODE_NAMES)):
            $char_dictionary[$labels[$i]] = $values[$valueIndex];
        endif;
        $valueIndex++;

        // death episode has value but no label for some reason, so we add one
        if($labels[$i] == "Death"):
            $char_dictionary["Death episode"] = $values[$valueIndex];
            $valueIndex++;
        endif;
    }

    return $char_dictionary;

}

// this function does the bulk of the html parsing work
function getElementsByClassName(\DOMDocument $DOMDocument, $className) {
    $elements = $DOMDocument->getElementsByTagName("*");
    $matched = array();

    for($i=0;$i<$elements->length;$i++) {
        if(in_array($className, explode(' ', $elements->item($i)->attributes->getNamedItem('class')->nodeValue))) {
            $elem = $elements->item($i);
            $tempName = DOMinnerHTML($elem);
            $replaced = str_replace('<br>', ';', "$tempName");
            $replaced = str_replace('<p>', ';', "$replaced");
            $stripped = strip_tags($replaced);
            if (strpos($stripped, ';') !== FALSE):
                $exploded = explode(';', $stripped);
                $final = $exploded;
            else:
                $final = $stripped;
            endif;
            $matched[] = $final;

        }
    }
    return $matched;
}

// needed because some multivalued items are separated only by <br> and <p>
function DOMinnerHTML(DOMNode $element)
{
    $innerHTML = "";
    $children  = $element->childNodes;
    foreach ($children as $child)
    {
        $innerHTML .= $element->ownerDocument->saveHTML($child);
    }
    return $innerHTML;
}

?>
