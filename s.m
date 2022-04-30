function tone = s(k,d)
    global fs bpm
    k = 440*2^((k-49)/12)
    t = 0:(1/fs):d*(60/bpm)
    adsr = exp(-10*t)-exp(-5*t)
    tone = sin(2*pi*k*t).*adsr
end