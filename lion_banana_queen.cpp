#include <iostream>
#include <vector>
#include <string>

int main()
{
    std::string artisanStreet = "Artisan Avenue";
    std::vector<std::string> streetNames;
    int streetNumber = 0;
    while (streetNumber < 2000) {
        streetNames.push_back(artisanStreet + std::to_string(streetNumber));
        streetNumber++;
    }
    
    for (unsigned int i = 0; i < streetNames.size(); i++) {
        std::cout << streetNames[i] << std::endl;
    }
    
    return 0;
}