import UIKit
import RxSwift

let disposeBag = DisposeBag()

let subject = BehaviorSubject(value: "init value")

subject.onNext("Last issue")

subject.subscribe { event in
    print(event)
}

subject.onNext("Issue 1")
