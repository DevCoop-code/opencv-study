//
//  main.cpp
//  HelloCV
//
//  Created by HanGyo Jeong on 2020/12/20.
//

#include <iostream>
#include <opencv2/opencv.hpp>

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, OpenCV " << CV_VERSION << std::endl;
    
    cv::Mat img;
    img = cv::imread("/Users/hangyojeong/Desktop/maxresdefault.jpg");
    
    if(img.empty()) {
        std::cerr << "Image load failed!" << std::endl;
        return -1;
    }
    
    cv::namedWindow("Image");
    cv::imshow("Image", img);
    
    cv::waitKey();
    
    return 0;
}
