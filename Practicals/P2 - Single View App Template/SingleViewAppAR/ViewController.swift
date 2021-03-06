//
//  ViewController.swift
//  SingleViewAppAR
//
//  Created by Tanveer Ali
//

import UIKit
//import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    
    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
        sceneView.debugOptions = [.showWorldOrigin, .showFeaturePoints]
        sceneView.showsStatistics = true
        
        let scene = SCNScene()
        sceneView.scene = scene
        
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }


}

