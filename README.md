# ecs-actions-demo
Github Actions를 활용해서 AWS ECS에 컨테이너 이미지를 지속 통합 & 배포하는 데모 프로젝트

# Goal
깃허브 리포지토리에 커밋 시 자동으로 신규 이미지를 빌드하고 배포하는 과정을 빠르게 파악한다. AWS 세부 설정은 과감히 건너뛴다.

# 작업 순서
1. Github Repository 생성
2. AWS Secret key 주입
3. 샘플 컨테이너 생성 (본 리포의 Dockerfile 활용)
4. ECR Repository 생성
5. ECS 클러스터 생성
6. task-definition.json 작성
7. ECS 서비스 생성
8. Github Actions - AWS ECS 
