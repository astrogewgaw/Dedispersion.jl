module Dedispersion

using Reexport

@reexport using FastDedispersion: fastdd
@reexport using DirectDedispersion: dd!, dd
@reexport using RollingDedispersion: rolldd!, rolldd

end
