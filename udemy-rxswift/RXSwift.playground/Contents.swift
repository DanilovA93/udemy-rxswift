import UIKit
import RxSwift

let observable1 = Observable.just(1)

let observable2 = Observable.of(1, 2, 3)

let observable3 = Observable.of([1, 2, 3], [3, 4, 5])

let observable4 = Observable.from([1, 2, 3, 4 ,5])

observable4.subscribe { event in
    if let element = event.element {
        print(element)
    }
}

observable3.subscribe { event in
    if let element = event.element {
        print(element)
    }
}

observable4.subscribe(onNext: { element in
    print(element)
})
