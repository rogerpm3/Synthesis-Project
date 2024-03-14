
python3 -m venv yolov5env
source yolov5env/bin/activate
pip install -r requirements.txt


#entrenatzeko, baina baliuak aldatu ein bihar dira
python train.py --img 640 --batch 4 --epochs 2 --data data.yaml --weights yolov5s.pt

#para guardar solo la imagen con el result
python detect.py --weights runs/train/exp8/weights/best.pt --img 640 --conf 0.25 --source dataset/images/val

#para guardar la imagen entera, los crops y el txt
python detect.py --weights runs/train/exp8/weights/best.pt --img 640 --conf 0.25 --source dataset/images/val --save-txt --save-conf --save-crop
