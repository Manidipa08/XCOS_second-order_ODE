//Aim :To obtain the solution of second order linear ordinary differential equation.
//date : 02/12/21
clc
clf
//d2x+dt2+2tdx/dt-5x=t^2
function dx = f(t,x)
    dx(1)=x(2)
    dx(2)=(t*t)-2*t*x(2)+5*x(1)
endfunction
funcprot(0)

t0=0
x0=[0;1]
t=0:0.5:30
n=length(t)
x=ode(x0,t0,t,f)
disp(x')
plot(t,x(1,:))
plot(A.time,A.values,'*m')
xlabel("Independent variable,t ->")
ylabel("Dependent variable, x ->")
legend("Using ODE","Using Xcos")
title("Solution of second order linear differential equation")
title color red
