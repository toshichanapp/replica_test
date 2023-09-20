# This file is used by Rack-based servers to start the application.
# unicorn workerによるメモリ枯渇対策
require 'unicorn/worker_killer'
use Unicorn::WorkerKiller::Oom, 256*(1024**2), 768*(1024**2), 16

require_relative "config/environment"

run Rails.application
Rails.application.load_server
