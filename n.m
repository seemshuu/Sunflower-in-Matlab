function tone = n(k,d)
    global fs bpm
    f = 440*2^((k-49)/12)
    t = 0:(1/fs):d*(60/bpm)
    r=@(t) max(0,t);% create ramp function
    op=@(t) 5*r(t)-2*r(t-0.2)+2*r(t-0.2)-2*r(t-0.2)+2*r(t-0.2);% create ADSR
    tone = sin(2*pi*f*t).*op(t)
end