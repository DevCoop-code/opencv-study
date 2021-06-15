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
void erode_dilate();
void open_close();
void labeling_stats();
void contours_basic();
void contours_hier();
void setLabel(Mat& img, const vector<Point>& pts, const String& label);
void PolygonDetecting();

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
    /*
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
    */
    
    /*
     Adaptive Binary
     */
//    erode_dilate();
    
    /*
     Open Close Binary
     */
//    open_close();
    
    /*
    Labeing
     */
//    labeling_stats();
    
    /*
     Contour
     */
//    contours_basic();
//    contours_hier();
    
    /*
    Detecting out-line
     */
    PolygonDetecting();
    
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

void erode_dilate()
{
    Mat src = imread("/Users/hangyojeong/Desktop/waterdrop.jpeg", IMREAD_GRAYSCALE);
    
    if (src.empty())
    {
        cerr << "Image load failed!" << endl;
        return;
    }
    
    Mat bin;
    threshold(src, bin, 0, 255, THRESH_BINARY | THRESH_OTSU);
    
    Mat dst1, dst2;
    erode(bin, dst1, Mat());
    dilate(bin, dst2, Mat());
    
    imshow("src", src);
    imshow("bin", bin);
    imshow("erode", dst1);
    imshow("dilate", dst2);
    
    waitKey();
    destroyAllWindows();
}

void open_close()
{
    Mat src = imread("/Users/hangyojeong/Desktop/waterdrop.jpeg", IMREAD_GRAYSCALE);
    
    Mat bin;
    threshold(src, bin, 0, 255, THRESH_BINARY || THRESH_OTSU);
    
    Mat dst1, dst2;
    morphologyEx(src, dst1, MORPH_OPEN, Mat());
    morphologyEx(src, dst2, MORPH_CLOSE, Mat());
    
    imshow("src", src);
    imshow("bin", bin);
    imshow("erode", dst1);
    imshow("dilate", dst2);
    
    waitKey();
    destroyAllWindows();
}

void labeling_stats()
{
    Mat src = imread("/Users/hangyojeong/Desktop/alphabet.jpeg", IMREAD_GRAYSCALE);
    
    if (src.empty())
    {
        cerr << "Image load failed!" << endl;
        return;
    }
    
    Mat bin;
    threshold(src, bin, 0, 255, THRESH_BINARY_INV | THRESH_OTSU);
    
    Mat labels, stats, centroids;
    int cnt = connectedComponentsWithStats(bin, labels, stats, centroids);
    
    Mat dst;
    cvtColor(src, dst, COLOR_GRAY2BGR);
    
    for (int i = 1; i < cnt; i++)
    {
        int* p = stats.ptr<int>(i);
        
        if (p[4] < 20) continue;
        
        rectangle(dst, Rect(p[0], p[1], p[2], p[3]), Scalar(0, 255, 255), 2);
    }
    
    imshow("src", src);
    imshow("dst", dst);
    
    waitKey();
    destroyAllWindows();
}

void contours_basic()
{
    Mat src = imread("/Users/hangyojeong/Desktop/contours.bmp", IMREAD_GRAYSCALE);
    
    if (src.empty())
    {
        cerr << "Image load failed!" <<endl;
        return;
    }
    
    vector<vector<Point>> contours;
    findContours(src, contours, RETR_LIST, CHAIN_APPROX_NONE);
    
    Mat dst;
    cvtColor(src, dst, COLOR_GRAY2BGR);
    
    for (int i = 0; i < contours.size(); i++)
    {
        Scalar c(rand() & 255, rand() & 255, rand() & 255);
        drawContours(dst, contours, i, c, 2);
    }
    
    imshow("src", src);
    imshow("dst", dst);
    
    waitKey();
    destroyAllWindows();
}

void contours_hier()
{
    Mat src = imread("/Users/hangyojeong/Desktop/contours.bmp", IMREAD_GRAYSCALE);
    
    if (src.empty())
    {
        cerr << "Image load failed!" <<endl;
        return;
    }
    
    vector<vector<Point>> contours;
    vector<Vec4i> hierarchy;                // Vec4i is the 4-dimension vector
    findContours(src, contours, hierarchy, RETR_CCOMP, CHAIN_APPROX_SIMPLE);
    
    Mat dst;
    cvtColor(src, dst, COLOR_GRAY2BGR);
    
    for (int idx = 0; idx >= 0; idx = hierarchy[idx][0])
    {
        Scalar c(rand() & 255, rand() & 255, rand() & 255);
        drawContours(dst, contours, idx, c, -1, LINE_8, hierarchy);
    }
    
    imshow("src", src);
    imshow("dst", dst);
    
    waitKey();
    destroyAllWindows();
}

void setLabel(Mat& img, const vector<Point>& pts, const String& label)
{
    Rect rc = boundingRect(pts);
    rectangle(img, rc, Scalar(0, 0, 255), 1);
    putText(img, label, rc.tl(), FONT_HERSHEY_PLAIN, 1, Scalar(0, 0, 255));
}

void PolygonDetecting()
{
    Mat img = imread("/Users/hangyojeong/Desktop/polygon.bmp", IMREAD_COLOR);       // Read Image File only Color, Ignore the transparent part
    
    if (img.empty())
    {
        cerr << "Image load failed!" << endl;
        return;
    }
    
    Mat gray;
    cvtColor(img, gray, COLOR_BGR2GRAY);
    
    Mat bin;
    threshold(gray, bin, 200, 255, THRESH_BINARY_INV | THRESH_OTSU);
    
    vector<vector<Point>> contours;
    findContours(bin, contours, RETR_EXTERNAL, CHAIN_APPROX_NONE);
    
    for (vector<Point>& pts : contours)
    {
        if (contourArea(pts) < 400)
            continue;
        
        vector<Point> approx;
        approxPolyDP(pts, approx, arcLength(pts, true) * 0.02, true);
        
        int vtc = (int)approx.size();
        
        if (vtc == 3)
        {
            setLabel(img, pts, "TRI");
        }
        else if (vtc == 4)
        {
            setLabel(img, pts, "RECT");
        }
        else if (vtc > 4)
        {
            double len = arcLength(pts, true);
            double area = contourArea(pts);
            double ratio = 4 * CV_PI * area / (len * len);
            
            if (ratio > 0.8)
                setLabel(img, pts, "CIR");
        }
    }
    
    imshow("img", img);
    
    waitKey();
    destroyAllWindows();
}
