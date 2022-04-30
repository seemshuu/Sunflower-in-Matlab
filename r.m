function tone = r(d)
    global fs bpm
    t = 0:(1/fs):d*(60/bpm)
    adsr = exp(-t)-exp(-6*t)
    tone = sin(2*pi*0*t).*adsr
end