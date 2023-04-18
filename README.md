NRELVI Debug

Description:

The page contains NRELVI test cases for reproducing divergence of 
specific dissipation rate (SDR) equation.

The cases diverge when production term of SDR equation is limited. 

The limiting of the production term is necessary to make the AMR-Wind 
SDR equation consistent with Nalu-Wind implementation.


AMR-Wind commit:

- The link below contains changes to the production term of SDR equation:

  https://github.com/sbidadi9/amr-wind/commit/4697970c1df4e85ad5ed69e9cba509f346a93a68

- In the main branch, the production term is unlimited. However, this is 
  inconsistent with the SDR equation in Nalu-Wind where the production 
  term is limited. 


Commit hashes:
- Exawind: c8c813a021c541571a50046fc034a61fb7596b82
- Nalu-Wind: 531b51826358b6f1fe306a5f71ade571e0addf36
- Spack-Manager: acf77d1d2d37cc17688687cdd236ff45e106e546
- AMR-Wind: See the above link


Test cases:

- "test_cases" directory consist of sub-directories for running NRELVI cases with
  SST turbulence model for four wind speeds: 7, 12, 15 and 20 m/s.

- Each sub-directory consists of AMR-Wind and Nalu-Wind input files, and slurm script.

- Modify the slurm script to include the correct location of SPACK_MANAGER directory 
  and SPACK environment.


Mesh:

- The near-body nalu-wind mesh will be provided upon request.


PDF document: 

- The document "NRELVI_Debug_setup_and_results.pdf" contains description
of the test matrix and summary of results.
