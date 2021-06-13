//
//  main.cpp
//  HelloCV
//
//  Created by HanGyo Jeong on 2020/12/20.
//

#include <iostream>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

void on_threshold(int pos, void* userdata);

int main(int argc, const char * argv[]) {
    /*
     Hello OpenCV Code
     */
    /*
    // insert code here...
    std::cout << "Hello, OpenCV " << CV_VERSION << std::endl;
    
    cv::Mat img;
    img = cv::imread("/Users/hangyojeong/Desktop/chunsik.png");
    
    if(img.empty()) {
        std::cerr << "Image load failed!" << std::endl;
        return -1;
    }
    
    cv::namedWindow("Image");
    cv::imshow("Image", img);
    
    cv::waitKey();
    */
    
    /*
     Global Binary Threshold Code
     */
    Mat src;
    if (argc < 2)
        src = imread("/Users/hangyojeong/Desktop/chunsik.png", IMREAD_GRAYSCALE);
    else
        src = imread(argv[1], IMREAD_GRAYSCALE);
    
    if (src.empty())
    {
        cerr << "Image Load Failed!" << endl;
        return -1;
    }
    imshow("src", src);
    
    namedWindow("dst");         // Create the Window named argument
    createTrackbar("Threshold", "dst", 0, 255, on_threshold, (void*)&src);      // Create TrackBar(UI Component) & Register the Callback Func(on_threshold func)
    setTrackbarPos("Threshold", "dst", 128);        // Set Default TrackBar Position
    
    waitKey();
    
    return 0;
}

void on_threshold(int pos, void* userdata)
{
    Mat src = *(Mat*)userdata;
    
    Mat dst;
    threshold(src, dst, pos, 255, THRESH_BINARY);
    
    imshow("dst", dst);
}
