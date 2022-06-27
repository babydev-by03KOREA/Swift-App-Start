

import UIKit

class DetailVC: UIViewController {
//    V/C의 LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      부모 Class에게 매개변수를 넘겨준다.
//      인스턴스화 시켜서 화면에 올릴 준비가 되었을때
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//      화면에 나오기 직전
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//      화면에 다 나왔을때
    }
    

}
