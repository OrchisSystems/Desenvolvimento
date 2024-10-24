const int pino_sensor_mq2 = A0; //define a porta do sensor mq2
const int valor_minimo = 100; //define o valor minimo do sensor
const int valor_maximo = 1000; //define o valor maximo do sensor
const int pino_sensor_ldr = A1; //define a porta do sensor ldr

void setup(){
    Serial.begin(9600); //define o inicio e a velocidade de comunicação
}
void loop(){
    int valorLuminosidade = analogRead(pino_sensor_ldr); //armazena valor ldr
    int valorGas = analogRead(pino_sensor_mq2); //armazena valor mq2

    float porcentagemGas = ((float)valorGas - valor_minimo) / (valor_maximo - valor_minimo) * 100; //calcula a porcentagem do mq2
    if (porcentagemGas < 0){
        porcentagemGas = 0;
    }
    else if(porcentagemGas > 100){
        porcentagemGas = 100;
    }
    Serial.print(valorLuminosidade);
    Serial.print(";");
    Serial.println(porcentagemGas);

    delay(1000); //define o intervalo em que o loop é executado
}