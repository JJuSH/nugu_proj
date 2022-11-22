for seed in 91 92 93 94 95
do
	CUDA_VISIBLE_DEVICES=1 python train.py \
    	--domain_name cartpole \
    	--task_name swingup \
    	--encoder_type pixel --work_dir ./tmp \
    	--action_repeat 8 --num_eval_episodes 10 \
    	--pre_transform_image_size 100 --image_size 84 \
    	--agent rad_sac --frame_stack 3 --data_augs cutout  --save_video --save_model\
    	--seed $seed --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 100000
done