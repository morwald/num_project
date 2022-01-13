clear all;

h = fftomatlab_vector('hmaxs_conf.dat');
errH1_conf = fftomatlab_vector('errH1_conf.dat');
errL2_conf = fftomatlab_vector('errL2_conf.dat');

h2 = fftomatlab_vector('hmaxs_nonconf.dat');
errH1_nonconf = fftomatlab_vector('errH1_nonconf.dat');
errL2_nonconf = fftomatlab_vector('errL2_nonconf.dat');

boundH1 = h + 5;

boundL2 = h + 0.001;

figure(1)
loglog(h, errH1_conf, '-x', h2, errH1_nonconf, '-o', h, boundH1); 
legend('conformal mesh', 'mortar', 'h', 'Location', 'Best');
xlabel('h') 
ylabel('H1 seminorm of u_h - u_{ref}') 

figure(2)
loglog(h, errL2_conf, '-x', h2, errL2_nonconf, '-o', h, boundL2); 
legend('conformal mesh', 'mortar', 'h', 'Location', 'Best');
xlabel('h') 
ylabel('L2 norm of u_h - u_{ref}') 

