#!/usr/bin/env bash
# # To begin a behavioral policy (DQN) needs to be trained by running:
# echo "train_behavioral"
# python main.py --train_behavioral
# wait
# # This will save the PyTorch model. A new buffer can then be collected by running:
# echo "generate_buffer"
# python main.py --generate_buffer
# wait

# Finally train BCQ by running:
echo "generate_buffer1"
python main.py --buffer_load 1e5
wait

echo "generate_buffer2"
python main.py --buffer_load 5e5
wait

echo "generate_buffer3"
python main.py --buffer_load 8e5
wait

echo "Finish!"

