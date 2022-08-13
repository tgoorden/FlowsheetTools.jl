module FlowsheetTools

export  Component, ComponentList, @comp, writecomponent, readcomponent, readcomponentlist!,
        Stream, StreamHistory, StreamList, StreamHistoryList, @stream, copystream!, deletestream!, renamestream!,
        copystreamhistory!, deletestreamhistory!, renamestreamhistory!, readstreamhistory,
        UnitOp, UnitOpHistory, UnitOpList, UnitOpHistoryList,
        BalanceBoundary, BalanceBoundaryHistory,
        calccorrections, closemb,
        conversion, selectivity,
        @unitop, mixer!


using JSON3, MacroTools, Optim, StructTypes, Statistics, Dates, DelimitedFiles
import Base.setindex!
import Base.getindex
import Base.length
import Base.copy



# Dicts for periodic table with atomic number => symbol => atomic mass
include("Atoms.jl")
using .Atoms

include("prettyround.jl")
include("components.jl")
include("streams.jl")
include("unitops.jl")
include("boundaries.jl")
include("kpis.jl")
include("closure.jl")

end
