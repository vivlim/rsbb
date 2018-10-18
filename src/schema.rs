table! {
    sessions (id) {
        id -> Integer,
        cookie -> Text,
        user_id -> Integer,
    }
}

table! {
    users (id) {
        id -> Integer,
        username -> Text,
        realname -> Text,
        password -> Text,
    }
}

joinable!(sessions -> users (user_id));

allow_tables_to_appear_in_same_query!(
    sessions,
    users,
);
