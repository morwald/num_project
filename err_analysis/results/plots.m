clear all;

n2 = fftomatlab_vector('hmaxs_conf.dat');
errH1_conf = fftomatlab_vector('errH1_conf.dat');
errL2_conf = fftomatlab_vector('errL2_conf.dat');

errH1_nonconf = fftomatlab_vector('errH1_nonconf.dat');
errL2_nonconf = fftomatlab_vector('errL2_nonconf.dat');

figure(1)
loglog(n2, errH1_conf, '-x', n2, errH1_nonconf, '-o'); 
legend('conformal mesh', 'mortar',, 'Location', 'Best');
xlabel('N2') 
ylabel('H1 seminorm of u_h - u_{ref}') 

figure(2)
loglog(n2, errL2_conf, '-x', n2, errL2_nonconf, '-o', h, boundL2); 
legend('conformal mesh', 'mortar', 'Location', 'Best');
xlabel('N2') 
ylabel('L2 norm of u_h - u_{ref}') 

