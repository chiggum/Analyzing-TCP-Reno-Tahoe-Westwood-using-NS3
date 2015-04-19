./waf --run "scratch/application6 --part=1"
./waf --run "scratch/application6 --part=2"
gnuplot <<- EOF
	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "a_uniflow_tcpreno_cwnd.png"
	plot "application_6_h1_h4_a.cwnd" using 1:2 title "(a) Congestion Window TcpReno"

	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "a_uniflow_tcptahoe_cwnd.png"
	plot "application_6_h2_h5_a.cwnd" using 1:2 title "(a) Congestion Window TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "a_uniflow_tcpwestwood_cwnd.png"
	plot "application_6_h3_h6_a.cwnd" using 1:2 title "(a) Congestion Window TcpWestWood"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcpreno_throughput.png"
	plot "application_6_h1_h4_a.tp" using 1:2 title "(a) Throughput TcpReno"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcptahoe_throughput.png"
	plot "application_6_h2_h5_a.tp" using 1:2 title "(a) Throughput TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcpwestwood_throughput.png"
	plot "application_6_h3_h6_a.tp" using 1:2 title "(a) Throughput TcpWestWood"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcpreno_goodput.png"
	plot "application_6_h1_h4_a.gp" using 1:2 title "(a) Goodput TcpReno"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcptahoe_goodput.png"
	plot "application_6_h2_h5_a.gp" using 1:2 title "(a) Goodput TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "a_uniflow_tcpwestwood_goodput.png"
	plot "application_6_h3_h6_a.gp" using 1:2 title "(a) Goodput TcpWestWood"
	

	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "b_multiflow_tcpreno_cwnd.png"
	plot "application_6_h1_h4_b.cwnd" using 1:2 title "(b) Congestion Window TcpReno"

	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "b_multiflow_tcptahoe_cwnd.png"
	plot "application_6_h2_h5_b.cwnd" using 1:2 title "(b) Congestion Window TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "cwnd(B)"
	set terminal png size 640,480
	set output "b_multiflow_tcpwestwood_cwnd.png"
	plot "application_6_h3_h6_b.cwnd" using 1:2 title "(b) Congestion Window TcpWestWood"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcpreno_throughput.png"
	plot "application_6_h1_h4_b.tp" using 1:2 title "(b) Throughput TcpReno"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcptahoe_throughput.png"
	plot "application_6_h2_h5_b.tp" using 1:2 title "(b) Throughput TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "Throughput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcpwestwood_throughput.png"
	plot "application_6_h3_h6_b.tp" using 1:2 title "(b) Throughput TcpWestWood"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcpreno_goodput.png"
	plot "application_6_h1_h4_b.gp" using 1:2 title "(b) Goodput TcpReno"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcptahoe_goodput.png"
	plot "application_6_h2_h5_b.gp" using 1:2 title "(b) Goodput TcpTahoe"

	set xlabel "time(in s)"
	set ylabel "Goodput(Kbps)"
	set terminal png size 640,480
	set output "b_multiflow_tcpwestwood_goodput.png"
	plot "application_6_h3_h6_b.gp" using 1:2 title "(b) Goodput TcpWestWood"
	
EOF
mkdir results
mv *.png results/
cp application_6_h1_h4_a.congestion_loss results/a_uniflow_tcpreno_congestion_loss_and_max_tp.txt
cp application_6_h2_h5_a.congestion_loss results/a_uniflow_tcptahoe_congestion_loss_and_max_tp.txt
cp application_6_h3_h6_a.congestion_loss results/a_uniflow_tcpwestwood_congestion_loss_and_max_tp.txt
cp application_6_h1_h4_b.congestion_loss results/b_multiflow_tcpreno_congestion_loss_and_max_tp.txt
cp application_6_h2_h5_b.congestion_loss results/b_multiflow_tcptahoe_congestion_loss_and_max_tp.txt
cp application_6_h3_h6_b.congestion_loss results/b_multiflow_tcpwestwood_congestion_loss_and_max_tp.txt