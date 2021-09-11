var1=$1
cd /home/ec2-user/App/
sudo sed -i "s/\(\<h1>\)\(.*\)/\1 $var1<\/h1>/1" "index.html"
echo "BUILD_NUMBER" :: $BUILD_NUMBER
echo "BUILD_ID" :: $BUILD_ID
echo "BUILD_DISPLAY_NAME" :: $BUILD_DISPLAY_NAME
echo "JOB_NAME" :: $JOB_NAME
echo "BUILD_DURATION" :: $BUILD_DURATION
sudo sed -i "s/\(BUILD_NUMBER:\)\(.*\)/\1 $BUILD_NUMBER/1" "index.html"
sudo sed -i "s/\(BUILD_ID:\)\(.*\)/\1 $BUILD_ID/1" "index.html"
sudo sed -i "s/\(BUILD_DISPLAY_NAME:\)\(.*\)/\1 $BUILD_DISPLAY_NAME/1" "index.html"
sudo sed -i "s/\(JOB_NAME:\)\(.*\)/\1 $JOB_NAME/1" "index.html"
sudo sed -i "s/\(BUILD_DURATION:\)\(.*\)/\1 $BUILD_DURATION/1" "index.html"
