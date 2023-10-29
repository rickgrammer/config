#!/bin/bash
while inotifywait -r -e modify,create,delete,move /home/ashfaq/config/nvim; do
    rsync -avz /home/ashfaq/config/nvim/ /home/ashfaq/.config/nvim
done
