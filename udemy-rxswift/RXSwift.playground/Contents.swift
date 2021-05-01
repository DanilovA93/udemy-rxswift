import UIKit
import RxSwift

let disposeBag = DisposeBag()

let variable = Variable("init value")
variable.value = "Hello world"

variable.asObservable().subscribe {print($0)}
