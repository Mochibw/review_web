# 使用官方Python运行时作为基础镜像
FROM python:3.12-slim

# 安装uv
RUN pip install uv

# 设置工作目录
WORKDIR /app

# 复制项目配置文件
COPY pyproject.toml uv.lock ./

# 安装依赖
RUN uv sync --frozen

# 复制应用代码
COPY simple_api.py .

# 暴露端口
EXPOSE 8000

# 运行应用
CMD ["uv", "run", "python", "simple_api.py"]