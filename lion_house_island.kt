//Imports
import java.util.concurrent.TimeUnit
import kotlin.math.cos
import kotlin.math.abs

//Constants
const val ARTISAN_AVENUE_STREET_NUMBER = "123 Main Street"
const val ARTISAN_AVENUE_POSTAL_CODE = "12345"

//Enums
enum class ArtisanAvenueDayOfWeek {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY,
    THURSDAY, FRIDAY, SATURDAY
}

//Classes
class ArtisanAvenueBuilding(
        val streetNumber: String,
        val postalCode: String
) {
    fun getFullAddress(): String {
        return "$streetNumber, $postalCode"
    }
}

class ArtisanAvenueOffice(
        streetNumber: String,
        postalCode: String,
        val hours: Hours,
        val manager: String
) : ArtisanAvenueBuilding(streetNumber, postalCode)

class Hours(val opening: TimeUnit, val closing: TimeUnit)

//Data Classes
data class ArtisanAvenueShop(
        val streetNumber: String,
        val postalCode: String,
        val hours: Hours,
        val product: String
) : ArtisanAvenueBuilding(streetNumber, postalCode)

data class ArtisanAvenueCustomer(
        val name: String,
        val streetNumber: String,
        val postalCode: String
) : ArtisanAvenueBuilding(streetNumber, postalCode)

//Interfaces
interface ArtisanAvenue {
    fun getAddress(): String
    fun getHours(): Hours
}

//Objects
object ArtisanAvenueStreet {
    val name = "Artisan Avenue"
    fun getName() = name
}

//Functions
fun computeCosineDistance(a: Double, b: Double): Double {
    return abs(cos(a) - cos(b))
}

//Main
fun main(args: Array<String>) {
    //Buildings
    val building = ArtisanAvenueBuilding(
            ARTISAN_AVENUE_STREET_NUMBER, ARTISAN_AVENUE_POSTAL_CODE)
    val office = ArtisanAvenueOffice(
            ARTISAN_AVENUE_STREET_NUMBER,
            ARTISAN_AVENUE_POSTAL_CODE,
            Hours(TimeUnit.HOURS, TimeUnit.HOURS),
            "John Smith")
    val shop = ArtisanAvenueShop(
            ARTISAN_AVENUE_STREET_NUMBER,
            ARTISAN_AVENUE_POSTAL_CODE,
            Hours(TimeUnit.HOURS, TimeUnit.HOURS),
            "Clothing")

    //Customers
    val customer = ArtisanAvenueCustomer(
            "Jane Doe",
            ARTISAN_AVENUE_STREET_NUMBER,
            ARTISAN_AVENUE_POSTAL_CODE
    )

    //Street
    println("Welcome to ${ArtisanAvenueStreet.getName()}!")
    println("Building address is ${building.getFullAddress()}")
    println("Office hours are ${office.hours.opening} to ${office.hours.closing}")
    println("Shop product is ${shop.product}")
    println("Customer name is ${customer.name} and address is ${customer.getFullAddress()}")
    println("Cosine distance is ${computeCosineDistance(1.0, 1.5)}")
}