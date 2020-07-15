//
//  VideoPostViewController.swift
//  LambdaTimeline
//
//  Created by Jarren Campos on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoPostViewController: UIViewController {
    
    lazy var player = AVPlayer()
    private var playerView: VideoPlayerView!
    lazy var currentURL = URL(fileURLWithPath: "")
    
    @IBOutlet var captureVideoButton: UIButton!
    @IBOutlet var retakeVideoButton: UIButton!
    @IBOutlet var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        retakeVideoButton.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if currentURL.absoluteString != "file:///" {
            playVideo(url: currentURL)
        }
    }
    
    func playVideo(url: URL) {
        player.replaceCurrentItem(with: AVPlayerItem(url: url))

        if playerView == nil {
            playerView = VideoPlayerView()
            playerView.player = player
            
            #warning("Hardcoded video preview")
            var topRect = view.bounds
            topRect.size.height = 455
            topRect.origin.y = 0
            
            playerView.frame = topRect
            view.addSubview(playerView)
        }
            player.play()
        }
        
    @IBAction func unwindToVideoPostVC(_ sender: UIStoryboardSegue) {}
        
    @IBAction func retakeVideoPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToRecordVideo", sender: nil)
    }
    @IBAction func captureVideoPressed(_ sender: Any) {
            performSegue(withIdentifier: "ToRecordVideo", sender: nil)
        }
        
}
