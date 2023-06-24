fn main() {
    println!("Welcome to Artisan Avenue!");

    // Variables
    let shopping = true;
    let price = 10;

    // Shopping Loop
    while shopping {
        println!("Let's shop!");

        if price > 50 {
            println!("Look at all these great deals!");
        } else {
            println!("We have some great items at a great price!");
        }

        let item = String::from("Hat");
        println!("You just bought a {}!", item);

        price += 10;
    }

    // Customer Service
    println!("We value our customers and want to ensure that you have a good experience.");
    println!("We provide customer service every day from 9am to 5pm.");

    let response = String::from("Yes");
    println!("Do you have any questions? {}", response);

    if response == "Yes" {
        println!("We'd be more than happy to answer any questions you may have!");
    } else {
        println!("Thank you for your patronage!");
    }

    // Shipping
    println!("Your item will be shipped within 5 to 7 business days.");

    // Returns
    println!("If you're not completely satisfied with your purchase, we offer a 30-day money-back guarantee!");

    // Thankyou
    println!("Thank you for shopping at Artisan Avenue! We hope to see you again soon.");
}