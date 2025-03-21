
## How to Run
# 도커 환경 실행
시뮬레이션 사용시 필수
```bash
xhost +local
```
도커 컨테이너 실행
```bash
docker compose up --build
```
시뮬레이션만 실행하고 싶은 경우
```bash
docker compose up rby1_sim --build
```
# 도커 환경 진입 및 코드 테스트
파이썬 테스트 코드 실행
```bash
docker exec -it rby1_control_container bash
python external/rby1-sdk/examples/python/09_demo_motion.py --adress rby1_sim_container:50051
```