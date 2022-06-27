//  Class를 여러개 만들때는 대부분 fileprivate를 사용함. 다른곳에서의 접근을 방지

import UIKit

// UIViewController을 상속받는 Class
// UIKit의 기본 Style
class ViewController: UIViewController {
    
    @IBOutlet weak var TestBTN: UIButton!
//    IBOutlet - 화면과 연결되어있는 변수
//    어떠한 행동을 하는것은 Action!
    
    @IBAction func method(_ sender: Any) {
        TestBTN.backgroundColor = .orange
//        UIColor은 생략이 가능함!
        
//        Class 코드를 가져오기만하면 안됨!
//        App에서는 화면 정보도 가져와야만함!
//        스토리보드 기반으로 가져오는 코드
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
//        storyboard에 Main(S/B file명)을 가져와!
        
        let deatilVC = storyboard.instantiateViewController(identifier: "DetailVC") as DetailVC
        
//        해당되는 VC를 ID로 찾아서 가지고와!
//        기본적인 타입은 UIViewController
//        UIViewController을 상속받아서 만들었음
//        Type를 DetailVC로 받아와야함.
        
        self.present(deatilVC, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewDidLoad() -> 화면이 메모리에 올라갔을때
        
        TestBTN.backgroundColor = UIColor.darkGray
        
    }


}

