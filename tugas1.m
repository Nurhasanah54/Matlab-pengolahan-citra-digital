close all
clc

disp('Assalamualaikum')
disp('Selamat datang di mata kuliah pengolahan citra digital')
nama=input('Nama=','s');
nim=input('NIM=');


gambar=imread('foto.jpg');

% instansiasi RGB %
R=gambar(:, :, 1);
G=gambar(:, :, 2);
B=gambar(:, :, 3);



%menggabungkan RGB di atas%
combine=cat(3, R, G, B);

%membalik secara vertikal%
R_reverseY=R(end:-1:1, :);
G_reverseY=G(end:-1:1, :);
B_reverseY=B(end:-1:1, :);

%membalik secara horizontal%
R_reverseX=R(:, end:-1:1);
G_reverseX=G(:, end:-1:1);
B_reverseX=B(:, end:-1:1);

%menampilkan warna kemerahannya%
combine=cat(3, R, G*0, B*0);

%merubah warna abu abu%
gray=rgb2gray(gambar);

%shadow quantity%
shad=im2bw(gray, 0.5);

%instansiasi untuk vertikal%
vertical=cat(3, R_reverseY, G_reverseY, B_reverseY);

%instansiasi untuk horizontal%
horizontal=cat(3, R_reverseX, G_reverseX, B_reverseX);

imagelist = {combine vertical horizontal shad};
figure
montage(imagelist)


%untuk memanggil gambar%
%imshow(combine);%
%imshow(vertical);%
%imshow(horizontal);%
