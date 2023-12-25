%% Lecture et affichage de l'image F00
I=imread('F00.png');
I=double(I)/255; % normaliser les valeurs des pixels dans la plage [0, 1]
imshow(I,[]);

% Recherche de Is par la fonction max
Is=max(I(:));
% figure;
% imshow(I==Is,[]);
%imwrite(I==Is, '1.png')

% Recherche de Is par la mediane des max
Is=median(max(I))
figure;
imshow(I>=Is) % afficher les pixels d'intensité superieure ou egale a Is 
% imwrite(I>=Is, '2.png')

%% Lissage d'image et estimation du voile
Il = medfilt2(I,[45 45]); % le filtre mediane en utilisant un bloc de voisinage de 45x45
figure;
imshow(Il,[])
% imwrite(Il, '3.png')
% Estimation du Voile
V = 0.95*min(Is,Il); % sachant que V est estimé comme 95% du minimum entre de l image lissée et l'image originale. 

%% Calcul de l'image après restauration
I0 = ((I-V)./(Is-V)).*Is;
figure;
imshow(I0,[])
% imwrite(I0, '4.png')

%% Correction de l'assombrissement
gamma = 0.4; % on choisit la valeur optime du gamma
I00 = real(I0.^(gamma)); % On applique la fonction real() à la transformation gamma pour obtenir les parties réelles des nombres complexes
figure;
subplot(2,1,1)
imshow(I,[])
title("L'image originale")
subplot(2,1,2)
imshow(I00,[])
% imwrite(I00, '5.png')
title("L'image réstaurée avec correction d'assombrissement")



%% Refaire tout avec F01.png

% Lecture et affichage de l'image F01
I1=imread('F01.png');
I1=double(I1)/255; %normalise les valeurs des pixels dans la plage [0, 1]
imshow(I1,[]);

% Recherche de Is par la fonction max
Is1=max(I1(:))
figure;
imshow(I1==Is1,[]);
% imwrite(I1==Is1, '55.png')

% Recherche de Is par la mediane des max
% Is1=median(max(I1))
% figure;
% imshow(I1>=Is1) % afficher les pixels d'intensité superieure ou egale a Is 
% imwrite(I1>=Is1, '6.png')

%Lissage d'image et estimation du voile
Il1 = medfilt2(I1,[45 45]); % le filtre mediane en utilisant un bloc de voisinage de 45x45
figure;
imshow(Il1,[])
% imwrite(Il1, '7.png')

% Estimation du Voile
V1 = 0.95*min(Is1,Il1); % sachant que V est estimé comme 95% du minimum entre de l image lissée et l'image originale. 

% Calcul de l'image après restauration
I01 = ((I1-V1)./(Is1-V1)).*Is1;
figure;
imshow(I01,[])
% imwrite(I01, '8.png')
% title("L'image réstaurée")

% Correction de l'assombrissement
gamma = 0.4; % on choisit la valeur optime du gamma
I001 = real(I01.^(gamma)); % On applique la fonction real() à la transformation gamma pour obtenir les parties réelles des nombres complexes
figure;
subplot(2,1,1)
imshow(I1,[])
title("L'image originale")
subplot(2,1,2)
imshow(I001,[])
% imwrite(I001, '9.png')
title("L'image réstaurée avec correction d'assombrissement")




%% %% Appliquer les mêmes traitements pour F02.png

% Lecture et affichage de l'image F02
I2=imread('F02.png');
I2=double(I2)/255; % normaliser les valeurs des pixels dans la plage [0, 1]
imshow(I2,[]);
% imwrite(I2, 'F02M.png')

% % Recherche de Is par la fonction max
% Is2=max(I2(:))
% figure;
% imshow(I2==Is2,[]);
% imwrite(I2==Is2, '95.png')

% Recherche de Is par la mediane des max
Is2=median(max(I2))
figure;
imshow(I2>=Is2) % afficher les pixels d'intensité superieure ou egale a Is 
% imwrite(I2>=Is2, '10.png')

%Lissage d'image et estimation du voile
Il2 = medfilt2(I2,[45 45]); % le filtre mediane en utilisant un bloc de voisinage de 45x45
figure;
imshow(Il2,[])
% imwrite(Il2, '11.png')

% Estimation du Voile
V2 = 0.95*min(Is2,Il2); % sachant que V est estimé comme 95% du minimum entre de l image lissée et l'image originale. 

% Calcul de l'image après restauration
I02 = ((I2-V2)./(Is2-V2)).*Is2;
figure;
imshow(I02,[])
% imwrite(I02, '12.png')
% title("L'image réstaurée")

% Correction de l'assombrissement
gamma = 0.4; % on choisit la valeur optimale du gamma
I002 = real(I02.^(gamma)); % On applique la fonction real() à la transformation gamma pour obtenir les parties réelles des nombres complexes
figure;
subplot(2,1,1)
imshow(I2,[])
title("L'image originale")
subplot(2,1,2)
imshow(I002,[])
% imwrite(I002, '13.png')
title("L'image réstaurée avec correction d'assombrissement")



%% Appliquer les mêmes traitements pour F03.png

% Lecture et affichage de l'image F02
I3=imread('F03.png');
I3=double(I3)/255; % normaliser les valeurs des pixels dans la plage [0, 1]
imshow(I3,[]);

% % Recherche de Is par la fonction max
% Is3=max(I3(:))
% figure;
% imshow(I3==Is3,[]);
% imwrite(I3==Is3, '135.png')

% Recherche de Is par la mediane des max
Is3=median(max(I3))
% figure;
% imshow(I3>=Is3) % afficher les pixels d'intensité superieure ou egale a Is 
% imwrite(I3>=Is3, '14.png')

%Lissage d'image et estimation du voile
% le filtre mediane en utilisant un bloc de voisinage de 45x45 pour chaque
% compsant couleur
Il3(:,:,1) = medfilt2(I3(:,:,1),[45 45]);
Il3(:,:,2) = medfilt2(I3(:,:,2),[45 45]);
Il3(:,:,3) = medfilt2(I3(:,:,3),[45 45]);
figure;
imshow(Il3,[])
% imwrite(Il3, '15.png')

% Estimation du Voile
V3 = 0.95*min(Is3,Il3) % sachant que V est estimé comme 95% du minimum entre de l image lissée et l'image originale. 

% Calcul de l'image après restauration
I03 = ((I3-V3)./(Is3-V3)).*Is3;
figure;
imshow(I03,[])
% imwrite(I03, '16.png')

% Correction de l'assombrissement
gamma = 0.43; % on choisit la valeur optime du gamma
I003 = real(I03.^(gamma)); % On applique la fonction real() à la transformation gamma pour obtenir les parties réelles des nombres complexes
figure;
% subplot(2,1,1)
% imshow(I3,[])
% title("L'image originale")
% subplot(2,1,2)
imshow(I003,[])
% imwrite(I003, '17.png')
% title("L'image réstaurée avec correction d'assombrissement")




%% Brouillard parfaitement blanc
%  Blanchissement du voile
V3b = rgb2gray(V3);
% Le traitement
I03b= (I3-V3b)./(Is3-V3b).*Is3;
figure;
imshow(I03b,[])
% imwrite(I03B, '18.png')

% Correction de l'assombrissement
gamma = 0.43; % on choisit la valeur optime du gamma
I003b = real(I03b.^(gamma)); % On applique la fonction real() à la transformation gamma pour obtenir les parties réelles des nombres complexes
figure;
subplot(2,1,1)
imshow(I3,[])
title("L'image originale")
subplot(2,1,2)
imshow(I003b,[])
% imwrite(I003b, '19'.png')
title("L'image réstaurée avec correction d'assombrissement")
