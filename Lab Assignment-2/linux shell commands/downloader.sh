# script name: downloader.sh
# purpose: to download a file automatically from the internet 
# author: Vasu Aggarwal
# date: 10-11-25

# url to download from 
URL="https://example.com/samplefile.txt"

# directory to save file 
DOWNLOAD_DIR="/home/vboxuser/Downloads/auto_downloads"

#create directory if not existed 
mkdir -p $DOWNLOAD_DIR

#file name with timestamp
FILENAME="$DOWNLOAD_DIR/file_$(date +"%Y-%m-%d_%H-%M-%S").txt"

#download using wget
wget -O $FILENAME $URL

echo "file downloaded successfully at $FILENAME"

