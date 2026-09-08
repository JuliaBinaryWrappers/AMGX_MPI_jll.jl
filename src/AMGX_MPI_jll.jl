# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule AMGX_MPI_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("AMGX_MPI")
JLLWrappers.@generate_main_file("AMGX_MPI", Base.UUID("8b86b00e-b9b5-513a-8192-d40bc5fd88d4"))
end  # module AMGX_MPI_jll
