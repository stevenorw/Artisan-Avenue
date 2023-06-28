// MARK: - Artisan Avenue

import UIKit

class ArtisanAvenueViewController: UIViewController {
    
    // MARK: - Properties
    
    var artisans = [Artisan]()
    
    // MARK: - Outlets
    
    @IBOutlet weak var artisansTableView: UITableView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Artisan Avenue"
        artisansTableView.delegate = self
        artisansTableView.dataSource = self
        artisansTableView.register(UINib(nibName: "ArtisanCell", bundle: nil), forCellReuseIdentifier: "ArtisanCell")
        
        fetchArtisans()
    }
    
    // MARK: - Methods
    
    private func fetchArtisans() {
        // Make network call
    }

}

// MARK: - TableView

extension ArtisanAvenueViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtisanCell", for: indexPath) as! ArtisanCell
        
        let selectedArtisan = artisans[indexPath.row]
        
        cell.configureCell(artisan: selectedArtisan)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artisans.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}