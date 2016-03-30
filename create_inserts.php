<?php 
include_once("./got_wiki_parser.php"); 
include_once("./process_inserts.php");

$characters = ['Eddard_Stark', 'Catelyn_Stark', 'Robb_Stark'];
//$characters = ['Eddard_Stark', 'Catelyn_Stark', 'Robb_Stark', 'Sansa_Stark', 'Arya_Stark', 'Bran_Stark', 'Rickon_Stark', 'Jon_Snow', 'Brynden_Tully', 'Edmure_Tully', 'Tywin_Lannister', 'Cersei_Lannister', 'Jaime_Lannister', 'Tyrion_Lannister', 'Joffrey_Baratheon', 'Myrcella_Baratheon', 'Tommen_Baratheon', 'Kevan_Lannister', 'Lancel_Lannister', 'Bronn', 'Qyburn', 'Pycelle', 'Petyr_Baelish', 'Varys', 'House_Tyrell', 'Margaery_Tyrell', 'Loras_Tyrell', 'Olenna_Tyrell', 'Mace_Tyrell', 'House_Bolton', 'Roose_Bolton', 'Ramsay_Bolton', 'Theon_Greyjoy', 'Walda_Bolton', 'House_Frey', 'Walder_Frey', 'Lothar_Frey', 'Walder_Rivers', 'Roslin_Frey', 'Robert_Baratheon', 'Stannis_Baratheon', 'Renly_Baratheon', 'Brienne_of_Tarth', 'Selyse_Baratheon', 'Shireen_Baratheon', 'Gendry', 'Davos_Seaworth', 'Salladhor_Saan', 'Melisandre', 'Daenerys_Targaryen', 'Viserys_Targaryen', 'Aerys_II_Targaryen', 'Rhaegar_Targaryen', 'Aemon', 'Drogo', 'Barristan_Selmy', 'Missandei', 'Grey_Worm', 'Daario_Naharis', 'Doran_Martell', 'Trystane_Martell', 'Elia_Martell', 'Oberyn_Martell', 'Ellaria_Sand', 'Obara_Sand', 'Nymeria_Sand', 'Tyene_Sand', 'Areo_Hotah', 'Gregor_Clegane', 'Sandor_Clegane', 'Beric_Dondarrion', 'Jaqen_H\'ghar','Thoros', 'Syrio_Forel', 'Craster', 'Quaithe', 'Xaro', 'Jorah_Mormont', 'Jeor_Mormont', 'Shae', 'Lysa_Arryn', 'Robin_Arryn', 'Spice_King', 'Pyat_Pree', 'Podrick_Payne', 'Ilyn', 'Janos_Slynt', 'Qhorin', 'Mance_Rayder', 'Alliser_Thorne', 'Samwell_Tarly', 'Gilly', 'Locke', 'Ygritte', 'Tormund', 'Meera_Reed', 'Jojen_Reed', 'Balon_Swann', 'Balon_Greyjoy', 'Yara_Greyjoy', 'Osha', 'Luwin', 'Hodor', 'Lord_of_Bones', 'Jon_Arryn', 'Illyrio_Mopatis', 'Gared', 'Hot_Pie', 'Lommy_Greenhands', 'Polliver', 'Lyanna_Stark', 'Mycah', 'High_Sparrow', 'Ros', 'Mhaegen', 'Armeca', 'Shagga', 'Timett', 'Chella', 'Talisa_Stark', 'Myranda', 'Violet', 'Tansy'];
$base_url = "http://gameofthrones.wikia.com/wiki/";
$dictionaries = [];

foreach($characters as $character):
    $dictionaries[$character] = get_character_info($character);
endforeach;
echo "Total entries: " . count($dictionaries) . "\n";
print_r($dictionaries);


$cmds = convert_all_characters($dictionaries);
process_inserts($cmds);

// Take the wiki parser's output dictionary as a parameter
function convert_all_characters($parser_output_array) {
    
    $SQLcommands = [];
        
    # For each character in the array...
    foreach ($parser_output_array as $current_character):
        $SQLcommands[] = convert_single_character_to_SQL($current_character);        
    endforeach;
    
    return $SQLcommands;
}

function convert_single_character_to_SQL($ch) {
    
    // The outermost array is a key:value pair with char name mapped to array containing every other k:v pair
    // $name = array_keys($character_array)[0];
    // echo $name . "\n";
    
    # Character table
    $name = $ch['Name'];
    $appears = $ch['First seen'];
    $alive = $ch['Status'];
    $character_insert = "INSERT INTO Characters (name, actor_name, first_appearance, status) VALUES ('$name', '$actor', '$appears', '$alive')";
    
    # CharacterActor table
    # For each ...
        # bind
        # $character_actor_insert =  "INSERT INTO CharacterActor (character_name, actor_name) VALUES ()";
    
    # CharacterAlias table
    # For each ...
        # bind
         # $character_alias_insert =  "INSERT INTO CharacterAlias (character_name, alias_name) VALUES ()";
    
    # CharacterFaction table
    # For each ...
        # bind
        # $character_faction_insert =  "INSERT INTO CharacterFaction (character_name, faction_name) VALUES ()";
    
    # Will need to adjust to merge each array into the master array
    return $character_insert;
    
    # Start with base SQL statement
    $CHARACTER_BASE = "INSERT INTO Characters(name, actor_name, faction, first_appearance) VALUES (";
    $CHARACTER_FACTION_BASE = "INSERT INTO CharacterFaction(character_name, faction_name) VALUES (";
    $CHARACTER_ALIAS_BASE = "INSERT INTO CharacterAlias(character_name, alias_name) VALUES (";

    # For each key/value pair in OUR schema...
    
        # If the key/value pair exists in the current character's dictionary...
            
            # Big switch statement 
            
            #NOTE: Alias and faction helper tables depend on character name 

            return "Hurray";
}



?>