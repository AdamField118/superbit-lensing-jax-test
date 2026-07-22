# config.sh - Configuration file for submission.sh

# Define cluster-related variables
export cluster_name="base_case"
export band_name="b"
export cluster_redshift="0.245"
export detection_band="b"

# Define directories
export DATADIR="/home/adfield/weak_lensing/superbit-lensing-jax-test/simulated_data"
export CODEDIR="/home/adfield/weak_lensing/superbit-lensing-jax-test"
export OUTDIR="${DATADIR}/${cluster_name}/${band_name}/out"
export LOGDIR="${DATADIR}/${cluster_name}/${band_name}/logs"

# Define ngmix parameters
export ngmix_nruns=1
export PSF_MODEL="em5"
export GAL_MODEL="gauss"
export reconv_psf="dilate"
export EXP="forecast" # forecast or backcast
# Seeds
export master_seed=42
export psf_seed=33876300
export base_ngmix_seed=701428540

# Set Conda environment
export CONDA_ENV="superbit-env"

# Ensure the conda command is available
source ~/.bashrc
source /cm/shared/spack/opt/spack/linux-ubuntu20.04-x86_64/gcc-13.2.0/miniconda3-25.1.1-24g7bpuxyyxo5pfd4zn5sldbomvz736a/bin/activate
conda activate $CONDA_ENV
