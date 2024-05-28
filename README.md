# Flutter Platform Channels

Utilizamos o MethodChannel quando é necessário utilizar um SDK exclusivamente nativo ou realizar chamadas específicas para executar funções diretamente no Android e iOS, ou seja, em situações onde não há um plugin disponível para auxiliar.

O MethodChannel é o mecanismo que o Flutter utiliza para se comunicar via mensagens com o código nativo, que pode ser escrito em Kotlin ou Swift.


### Canal de Comunicação

Para começar, precisamos criar um canal. Ele terá seus próprios métodos, e nós os utilizaremos para estabelecer a comunicação. Ao chamarmos os métodos de um canal, em vez de serem executados no Flutter, eles serão executados diretamente no ambiente nativo.

Com o canal configurado, já podemos realizar chamadas. No lado do Flutter, precisamos utilizar o método invokeMethod para invocar a chamada e configurar o recebimento no código nativo através do setMethodCallHandler.

![Platform Channels](https://docs.flutter.dev/assets/images/docs/PlatformChannels.png)

### Exemplo

Neste projeto de exemplo, utilizamos quatro tipos de chamadas: uma simples, outra passando parâmetros, uma com callback e, por fim, uma comunicação via Stream.

### Referências 

https://docs.flutter.dev/platform-integration/platform-channels

https://medium.com/kobe-tech/methodchannel-como-executar-código-nativo-no-flutter-8d02f6bb79a3

https://medium.com/gytworkz/how-to-integrate-platform-channels-in-flutter-a-step-by-step-tutorial-aa0ef85b08ab

https://youtu.be/ixvtI2Wbh3c?si=KnrtjhT8txusmV3v