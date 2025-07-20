//
//  HomeViewModel.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//
import Foundation

protocol HomeViewModelProtocol{
    var bindSucessResultToViewController: (() -> ())? { get set }
    var bindErrorResultToViewController: ((_ msg: String) -> ())? { get set }
    var showLoadingIndicator: ((_ isLoading: Bool) -> Void)? { get set }
    
    func getProducts()
    func getProductDataCount() -> Int
    func getProductByIndex(index: Int) -> Product?
    func paginationAction(index: Int)
}

 
class HomeViewModel: HomeViewModelProtocol{

    var movieUseCase: HomeUsecase = HomeUsecase()
    var bindSucessResultToViewController: (() -> ())?
    var bindErrorResultToViewController: ((_ msg: String) -> ())?
    var showLoadingIndicator: ((_ isLoading: Bool) -> Void)?
    var movieData: [Product]?
    var currentPage = 7
    var totalPages = 21

    
    var isLoading: Bool = false {
        didSet {
            showLoadingIndicator?(isLoading)
        }
    }
    
    func getProductDataCount() -> Int{
        movieData?.count ?? 0
    }
    
    func getProductByIndex(index: Int) -> Product?{
        return movieData?[index]
    }
    
    
    func paginationAction(index: Int){
        if index == (movieData?.count ?? 0) - 1 {
            if currentPage < totalPages {
                isLoading = true
                currentPage = currentPage + 7
                getProducts()
            }
        }else{}
    }
    
    func handleData(data: [Product]?){
      
        if currentPage == 7{
            self.movieData = data
        }else{
            let count = data?.count ?? 0
            for e in 0..<count {
                if let newData = data?[e]{
                    self.movieData?.append(newData)
                }
            }
        }
        DispatchQueue.main.async{ [weak self] in
            self?.bindSucessResultToViewController?()
        }
    }

}

// MARK: - Get API
extension HomeViewModel{
    func getProducts() {
        movieUseCase.getHomeProduct(page:currentPage ){ [weak self] result in
            switch result {
            case .success(let data):
               self?.handleData(data: data)
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.bindErrorResultToViewController?(error.message.rawValue)
                }else{
                    self?.bindErrorResultToViewController?((error as? ErrorModel)?.msg ?? "")
                }
            }
        }
    }
    
    
}
