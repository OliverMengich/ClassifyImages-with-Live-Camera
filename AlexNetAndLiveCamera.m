
% Connect To the Webcam
camera = webcam;
% Define the PreTrained Network alexnet
nnet = alexnet;
% Initial the continous loop
while true
    % Take a snapshot with the webcam
    picture = camera.snapshot;
    % Resize the image according to the network's input
    picture = imresize(picture,[227 227]);
    % now to classify the image using the network
    label = classify(nnet,picture);
    % Define position for the bounding box
    position = [10 33 213 183];
    % insert the bounding box
    image = insertObjectAnnotation(picture,'rectangle',position,char(label));
    % now to show the image the image
    imshow(image);
end


 