use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Battle {
    #[key]
    pub battle_id: u32,
    pub player_id: u32,
    pub opponent_id: u32,
    pub active_beast_player: u32,
    pub active_beast_opponent: u32,
    pub battle_active: u32,
    pub turn: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Beast {
    #[key]
    pub beast_id: u32,
    pub beast_name: felt252,
    pub beast_type: u32,
    pub beast_description: felt252,
    pub player_id: u32,
    pub hp: u32,
    pub current_hp: u32,
    pub attack: u64,
    pub defense: u64,
    pub mt1: u32,
    pub mt2: u32,
    pub mt3: u32,
    pub mt4: u32,
    pub level: u32,
    pub experience_to_next_level: u64,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Mt {
    #[key]
    pub mt_id: u32,
    pub mt_name: felt252,
    pub mt_type: u32,
    pub mt_power: u32,
    pub mt_accuracy: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Player {
    #[key]
    pub player_id: u32,
    pub player_name: felt252,
    pub beast_1: u32,
    pub beast_2: u32,
    pub beast_3: u32,
    pub beast_4: u32,
    pub potions: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Potion {
    #[key]
    pub potion_id: u32,
    pub potion_name: felt252,
    pub potion_effect: u32,
}
