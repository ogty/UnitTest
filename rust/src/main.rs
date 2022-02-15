mod abb;

fn main() {}

#[test]
fn test_is_abb_ok() {
    assert_eq!(abb::abb(10), "Oct");
    assert_eq!(abb::abb(String::from("Feb")), "2".to_string());
    assert_eq!(abb::abb(String::from("Jun")).parse::<i32>().unwrap(), 6);
    assert_eq!(abb::abb(13), "");
}

#[test]
fn test_is_abb_no() {
    assert_ne!(abb::abb(10), "Dec");
    assert_ne!(abb::abb(String::from("Feb")), "6".to_string());
    assert_ne!(abb::abb(String::from("Jun")).parse::<i32>().unwrap(), 8);
}
