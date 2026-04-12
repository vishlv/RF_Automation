FROM jfxs/robot-framework:latest

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN mkdir -p /app/results && chmod 777 /app/results

COPY . .

CMD ["robot", "--outputdir", "results", "TestCases/OrangeHRM_Suite.robot"]