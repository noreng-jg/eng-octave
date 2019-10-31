function y = reverb(filename, soundon)

[x fs] = audioread(filename);






if soundon == true
    sound(y, fs);
end