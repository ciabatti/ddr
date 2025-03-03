# Usa un'immagine di base leggera di Python
FROM python:3.10-slim

# Imposta la directory di lavoro nel container
WORKDIR /app

# Copia il file requirements.txt e installa le dipendenze
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia tutto il codice dell'applicazione
COPY . /app/

# Imposta variabili di ambiente per Django
ENV PYTHONUNBUFFERED=1

# Espone la porta su cui Gunicorn girerà
EXPOSE 8000

# Comando per avviare Gunicorn
CMD ["gunicorn", "ddrproject.wsgi:application", "--bind", "0.0.0.0:8000"]
