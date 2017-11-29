open Numalib_raw

module type S = sig
  module IO : Io_intf.S

  type bitmask

  val node_to_cpus : node:int -> int list IO.t
  val bits_of_bitmask : bitmask -> int list IO.t
  val bits_to_bitmask : int list -> bitmask IO.t
  val available : unit -> bool IO.t
  val max_possible_node : unit -> int IO.t
  val num_possible_nodes : unit -> int IO.t
  val num_possible_cpus : unit -> int IO.t
  val max_node : unit -> int IO.t
  val num_configured_nodes : unit -> int IO.t
  val num_configured_cpus : unit -> int IO.t
  val num_task_cpus : unit -> int IO.t
  val num_task_nodes : unit -> int IO.t
  val get_mems_allowed : unit -> int list IO.t
  val parse_cpustring : string -> int list IO.t
  val parse_nodestring : string -> int list IO.t
  val node_of_cpu : node:int -> int IO.t
  val node_distance : int -> int -> int IO.t
  val get_affinity : pid:int -> int list IO.t
  val set_affinity : pid:int -> cpus:int list -> unit IO.t
  val preferred_node : unit -> int IO.t
  val set_preferred_node : node:int -> unit IO.t
  val node_size64 : node:int -> int IO.t
  val node_size : node:int -> int IO.t
  val pagesize : unit -> int IO.t
  val set_strict : strict:bool -> unit IO.t
  val get_interleave_mask : unit -> int list IO.t
  val set_interleave_mask : nodes:int list -> unit IO.t
  val bind : nodes:int list -> unit IO.t
  val set_localalloc : unit -> unit IO.t
  val set_membind : nodes:int list -> unit IO.t
  val get_membind : unit -> int list IO.t
  val run_on_node_mask : nodes:int list -> unit IO.t
  val run_on_node : node:int -> unit IO.t
  val get_run_node_mask : unit -> int list IO.t
  val set_bind_policy : strict:bool -> unit IO.t
end
