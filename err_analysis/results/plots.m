clear all

hmaxs_conf = fftomatlab_vector(’hmaxs_conf.dat’);
errH1_conf = fftomatlab_vector(’errH1_conf.dat’);
errL2_conf = fftomatlab_vector(’errL2_conf.dat’);

hmaxs_nonconf = fftomatlab_vector(’hmaxs_nonconf.dat’);
errH1_nonconf = fftomatlab_vector(’errH1_nonconf.dat’);
errL2_nonconf = fftomatlab_vector(’errL2_nonconf.dat’);

constH1 = 3e0;
boundH1 = constL2 * h;

constL2 = 3e0;
boundL2 = constL2 * h;

tiledlayout(2,1)
nexttile
loglog(h, errH1_conf, ’-x’, h, errH1_nonconf, ’-o’, h, boundL2); 
legend(’conformal mesh’, ’mortar’, ’h’, ’Location’, ’Best’);
xlabel('H1 seminorm of u_ref - u_h') 
ylabel('h') 

nexttile
loglog(h, errL2_conf, ’-x’, h, errL2_nonconf, ’-o’, h, boundL2); 
legend(’conformal mesh’, ’mortar’, ’h’, ’Location’, ’Best’);
xlabel('L2 norm of u_ref - u_h') 
ylabel('h') 

