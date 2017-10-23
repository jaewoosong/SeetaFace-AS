/**
 * 采用中科院山世光开源的SeetaFaceEngine实现android上的人脸检测与对齐、识别
 * BSD license
 * 广州炒米信息科技有限公司
 * www.cume.cc
 * 吴祖玉
 * wuzuyu365@163.com
 * 2016.11.9
 *
 */

package seetaface;

import android.graphics.Bitmap;

public class JniClient {
	static {
		System.loadLibrary("SeetafaceSo");
	}

	// Calculate the similarity of 2 faces,
    // which is based on the characteristics stored in the file,
    // and the file name format is /sdcard/seeta_fea%d.txt
	public native float CMCalcFaceSim(int vFaceNo1, int vFaceNo2, String vDetectModelPath);
	
	// Gamma correction
	public native void CMimGamma(Bitmap vColorBmp, Bitmap vGammaBmp, float vGamma);
	
	public native void CMim2gray(Bitmap vColorBmp, Bitmap vGrayBmp);
	
	// Detect the face, return to each face position, each person's;
    // separated, the coordinates separated by semicolons
	public native String CMDetectFace(byte[] vImgData, int vColNum, int vRowNum, int vCh,
                                      String vDetectModelPath, int vFaceNo, Bitmap vFaceBmp);

    // Face crop
	public native byte[] CMCropFace(byte[] vImgData, int vColNum, int vRowNum, int vCh,
                                    String vDetectModelPath, Bitmap vFaceBmp);

	// Face comparison
    /*
	public native float CMCompFace(byte[] vImgData1, int vColNum1, int vRowNum1, int vCh1,
			byte[] vImgData2, int vColNum2, int vRowNum2, int vCh2,
			String vDetectModelPath);
	*/

} 
