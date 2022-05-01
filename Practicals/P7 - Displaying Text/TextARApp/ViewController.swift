//
//  ViewController.swift
//
//  Created by Tanveer Ali
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let scene = SCNScene()
        sceneView.scene = scene
        sceneView.session
            .run(configuration)
        sceneView.showsStatistics = true
        
        let text = SCNNode()
        text.geometry = SCNText(string: "Tanveer Ai Tapya", extrusionDepth: 0.2)
        text.geometry?.firstMaterial?.diffuse.contents = UIColor.magenta
        text.position = SCNVector3(0,0,0)
        sceneView.scene.rootNode.addChildNode(text)
        
    }


}

