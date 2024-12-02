import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});
 
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjalevel=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Textwidget(txt: 'Ninga id card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
            ninjalevel+=1;
          });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(

             child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEhIVFhUVFRYVFRYVFhcVFRUXFRUWFhUVFRUYHSggGBolGxUVIjEhJikrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGy0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBEQACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAQIDBAYHAP/EAEYQAAIABAQDBQQIBAMFCQAAAAECAAMRIQQFEjEGQVEiYXGBkRMyobEHFCNCUsHR8DNigtJykqIWQ3PC4RVTY4OTssPT4v/EABoBAAIDAQEAAAAAAAAAAAAAAAECAAMEBQb/xAAzEQACAgEDAgIIBwACAwAAAAAAAQIRAwQSITFBE1EFIjJhcYGRsRRCocHR4fAjUiRygv/aAAwDAQACEQMRAD8AybTK9I7LOAmOVe6AkXWPIHSLCuiNgIhKEtECkNNIgeCGYBEogwGISxDBANaAxkNiBPUgBEghEMQNjTEINghsSISxpgkGGIQYYgTwiBQ4RCxE0uFYSZRCNjxiSeyPQ+kLvXmXrDN9hrLSGTsrlBrqQvDoqZVMo9Ig26iWUhAvEQJOyVYgESosK2PFGkwvDZfBviakMGIRaWZVWrmvp6GMGTWKGZY/P/I34tI8kJSXZWZsiN1mJotCIchIK5PljzhMINFlrqJN7mulR40PpFWTOsbin3dGzT6WWbdT6Jv6CNgW6iNBmcSJsGeoggpjfqf8wiOxlFPqxv1Qfi+EBtjKEW+pScUrEFrkiiEoSsMKNJgMZFlJAIrBSCKcOIFBGmSIlDWNModIm0ljdA6QKDYugdIlB3MayDpEoljCogpEsgni0EBXMQZCCCFDwYBYiaUIWQ8VbNTkuT1oWG5jk6nVdkei0ehSScupr8Pwy7KSJZpTpHLlqlfU6LeGLptADN8kFLih2jZg1TT4ZTqNJDJEx8+VpJB5R2oT3KzzObE8cnFlcE84sM7HCAFDkEBsKQZyDKXxM5JUsdpj5Acye4CM+bKscXJmnHCzecbfY4USJZAWUqyyeb1PaI7ya+pji6ZrLqbkdlwePSOS7nK2N49CkcJllYhyUjecCYf7HEW3Ev0q4/OObrrSjL3nd9ERTyOL7qgROsSOhjpQkpJNHKy43CTi+3BAWiwpoieICiNoNE5BExrmASyMmCEZBFPQo0S/K2HhDdiEqSyYVuh1Gwlg+HcTNGqXJmOOqqSPWKpZox6suWKT6IGYrCshKspUjcEEEeIMWRmmrQkoNdSuqQQUGcu4YxU5C8qQ7qOYFvLr5RTPNCLpstjik+gLx+BeWSrqysNwwIPoYZTUlaYHjafJTYRaitlfE7QQFRogyEEEKHiAWIt4FgGWu1RFWVXF0aNO0skW/M6Pkk1RpJ2B/fzjzedPk9jidx4OlSM/kBN6UAtGCNxTVHInoczkYbiDGrMckUAuY04INI7EIeHBRZzfN3Gs0j0OmTUOTzXpCSeXgHhaxqTObJcj0lRGwqJewuELEKoJYkAAXJJ2Aimc9qtl8I2dc4U4f+pS9ZoZrihP4B+EHnQ+pA6R5/Vap5ZcdF/rOpgwLoznvG2Kdp7Bq6R7ovSlNx1vW8dL0dCCxbl17i+kJTUtr6djKkR0zlGoxGSq0sTZGogrqCk6iRWhoR94GxH7PPjqpRnsy/7/AHmWPQ48mPxNPfTp/Hv9xrOAJgOHxA5gSuX8zc4q18vVRb6MVZAPn+DKPXkf3+/CLvR+dShs7oPpfSuM/FXSX3AxMdGziNCEHf8Ad4lgoiMFdSNcAiZuYIrRHAYV0EhhaEiMaISkCwidhu5vPo44fTETS0wVSWASOpPug91ifKMWpyOKpGzBBPlnRsyzmXI+zUadNBUikpR0JG1o5GTJXxOpiwbuX0OW8UcTYaculZftJjAguRQreq6DzvAwLPCe66S7efxDqJYppxr4APIsThZeIX6wrMlwa0KjUKBiu9BWvW0a9TqM88T8PhmPFgxxnzydr4fzOSZcuVKIKqgAKUaXRezp1g3a1YyQy+J169zRLFt6dAXxxlKYmWUIGvdG5g/p1iQzPFO18y+GnWWDT+RwuelCR0j0cXwcGaplLE7Q5WVWiBQgiDIcIBYiaWYVjJhjA5qy0GogAUjBm0yfKR2NLr2uJMvjOb3Y161+FIy/hX5G/wDGw/7FbEZkd1Y1pQ1i/HpvNGbPrkl6r5BjmtzG6qVI4zk5ytnWeH8gwmMyuW01VR5QdTNFFYaWJGo87MN452bJPHO4l0VGXDObY7BmXMKXI+6SKVFbGnKL46lPh8BWBtWjpP0ecNGX9vOWjH3AR7o5tTkT8vGOVrtV4j2QfHc14sWyO59TZZhKJBA6RzmasE0nbOZ5jwjNeczTpoWVX3idT0rXSq9fhHVxa6GPElGPP6Ey6bJny3doqzJOWodNEt+N2LedDSsBZNdP1knXwRo8DQY/VnJWuvJncizMyZikk6KjUBuOpWvOnrSOpqMCyR955bSamWCVp8HSspxspq6KDVeoFA/RrRwckJRfJ6nFlhkW5ULxLhA0g9fu8zXcQdLKUcqaE1koSwyhP5fEoYnKJMrDkMAzIBMZ9tTDdQeQpUD1jpfiZuV2cjFpccsck+3IN4gzeVMw8qXKl+zUNqK0pcKRWvP3t4u0kZeI5Sd8FOrjGOGMYquf2/szJjonMoGTBeBYHEipBDXA0wwlDYDGiEpJsIJO5teA8/EkzJZbT7ReyaVBYBgB3VLD0jDrMTlG12NmlyJOmW+NMURpkOSRQO4/EzAkEjlSu0cTCm5Ob+XuR18s1SijATGCsKUO5r8o2PlGVcFbFTUBrYnnDJMKSDvCnExQrIJorOCj1C+zY2qxp2lJ01FbUtGXNjcG8kfLlef9mnHJS9Vm2w+bvqdpmosiHWvWgqCPjCSSnW3u+Ddj9WLvsuTmWOmF3Zz95i3qax6XHHbFLyPLZZbpNg3E7RYUoqNEGQgghQ4QB0PUwrCSKYAyZMBCFibJFWImAmSTWBJjRR0LgfCL9XeYxLCUdTS6mhNR29OxOn/2GObq7vg0YEt3r9CTiDFyhNkT5YVmlHVSnvLUVX4mMMYynFqR0ZqOKS29zZtxHIaWsxHFCtaAVI8RyjJKPNIsxaaUvh5mUzjjgKOy422ABP8A0840YdFkn2r4j5JafD1dvyXJzviDjhp3Z1EDnTc+J/IfGN+DFgwu3yzLn1WXItsPVj9/iZk5wvQxs/F4zn+BIIB41NHHQUyvN3lWBqta06HqDyMZs2njk69TZp9TPE+Oh1bAqJmGlTZ04himoIukEagDVt77W7u+OTLbjk4o68Vk1CUn0MhicS0+YsiXvqpXlvQUG14ul6qsrxLk02O4CxBlijo7C5F1PgDsfhEw65RfrIOpSyxUU+5lMx4fnyf4kpl76dn/ADC0dDHqsc/ZZzpaeS7ACdhjFimJLGVXlQ6kJs4IGWHTKnEZpgsiRfRbCGBRJLYg1pWl6HY9xhWr4GXAS41zNpuIci5qu1t1FhHFx41Dg6bm2jKe3oG1A6iLfOLKtqgJtJ2D2n1h6JFiy5t4VougzqXBWZtOZUe5CjtbMVWgAJ5m4v3RzZ6dxi5R6fodOGpipKLfLIuPJWFDKJUp5UxQFKlaIyi2qvM943jsaCWWXMmmv1Rxtbjxw4V7vhwYXFi0dNnMRSaIMhBECh0AdD1EKwkyLCNjpFuTJJiuUi2MWaLIuFsRiT9lLJHNjZR4sbeW8ZsuphDqy1Y/M6Lkf0ayko2IfWfwrVU8zufhGDJrZy9ngdRSDWfJIl4dpMpVQ07AQUow2NvTzjH4yjK3z5mvDpcmXoYThThj6804zZjJ7IhSopqJNeuwtG/xOPVKJxcHUgTxHw7Oks8uU7uiDW16Ai9dQ2LClfDpzTA5Oe9LudGUXLDV8VZhcZmCqaE36COrPNCDpnEWOclZmsRNqSepjmze6TZsXCo8uEmG4luR1CsfyhLRDQho7rPPIll3hGOja5zls2VIlTRMJabKWYwAPZ1C22/ZofOOa9rm00dSHiKFxZWykGRMSaWUqGU3ND5VgZMTnFpGvasSUm+DtWT5qJiAg1jk3KDpjzxqS3RCoZWHLzixOEupQ4yQEzXg/CT7mWEb8Uvsn02PpF0ck4+zL6iun1RzrizgaZhwZiH2kvmaUZf8Q6d8asOst7ZcMSWFNXEw0+TTlHRjksySxlVli1SKttF/DsGoo32h7F2huVw5OaWZgFhuOdOvhYxny6hY8kcck1u6eXwNOPTOcXJNcfUymaTmDnqKCvSgoIzONtse64BMzFvX3q+N4GxDxkzY5FwnLnSkdrFgGMc/NqJRbSO1pdFCcVJl3M/o7AQvJepArpO5p3xVj1sr9YuyaHH+TqRSZy4ZUCj7SWynVe5BOsbeXnGzQwnmm2/Zp8fYzek5Y8GCMF7Vrnv7/wCBOKMym6dEwtNl1WZIcjt6XFVFedrEHmvdHUwaeMfXjx2fkcLLqJ5Vslz3T7mOxOMvpKEEdaRqbKFiYzCn2jBBYnrtFc8jjy4v5FmPBvlt3L5kuKwrS2KuKEfEciO6GhOM1ceguTFLHLbJcjAsGyJE8uXCSY6iFcsyx5rhJalmawAFSYzZMqirZfDHZ1vhX6O5coCZiqO+4l/cX/F+I/Dxjk5tXKfEeF+poSrobV8TLlrQUAAoALAdwAjI5pFkMMpAfH50aUW0VSm2dDBolfJk88zVZK+0e7N7iVu3eeiiNOk0jzO30NOo1MdPGl1MVl3FU+TiDiFc6j74+6y/hI2p06R3JaWLSS4PPPUtybnyWMNx7Km4x2nAKsw6SfugG3PpHKyYrTS6o6eHU0tr6UC52ampUypDgEjtSlNaHrHaXo3DNbufqcSWtyRdcFKbiV1akkSUbqksCHh6Nwx62/ixJa7I+lIibFzPxt60+UaVp8S42r6FH4jI/wAzBYMUFKHo9IFBNFmnFU2dQCktQqqApvRVCgFulALCkZoaeMXb5Zterm47Y8L7gqfjCxFTsKRaoJFTm31NFwvxQ+HIBJK/Lu8IyanSxyr3mrT6l43XbyOycOZ3IxSVVgG5rW/lHElieN1Lg3uW5bo8oM+y6NA2+TE3eaJmlgihFQbEG9Y0eE2uSvdTtGD4i+jpJhL4dghN9De75HlFuPUTx8SVr9SSUZe4wuY8GT5baSATtapueVaR1NPleWG9Ljny7GbLiUXVr9QpkPC4lMDiEcE7HTYd3z9Y1Tc4wUsO1u+U32r7lWPZbU3RuBm0iUyyVU9qgJbag5ARzXodTqJrLmaSjykvMt8WEINQMV9IX0fmr4jD9oMdXswvaB56abjnSLI5E03LsV90l3ObZflGp6NXs7gDobg9Iry5KRuwYbfJr3zn6vpTQRYAWt4COZ4fiJs7yyrC1Fo1uSY1pksOwKlgaA702BPjvGOUdsqRql6yUqMfxnhgkxDW7Jfx6jpvHqtBBQg4o8f6RyyyZN0uvT6FPPcVKLYfCyiayVLzDyLlFaniGLeFY6CV8HM06kpOT+QMwGRe1eZWvZQMDyu1DX1EDLGkasUrlRp+HeAwyTZ7n+Gh0jvirxVHan3DO1OkVsXkOuTMdmVaEAFjSp5eF+e14plkUXR0vC8TG7BWTcOe1CszlQ3Rdh1qT+UJqMs8eKWVJUvf+n+Zkw4lLIoPqzVZD9Gk2aqzHmKitcChZqd4sB6xzcnpJdIo0+AovlnSchyORg00yl7RHac3dvPkO4RzMuec3ci1QT6F6YjNfVaK+vJamo8UCcxnIm5qekBm7BCU+xks/wA/SR71DMp2ZfToX6Du3MbtLopZHul0H1GqhgjUeWc4zLM3muXdqk/sADkO6O/jxqKpHnc2ZzdsoO8XUZWzL4iZ2j4n5xxp8TfxOjF+qjbZXluImSlcyWUMLFuyDTmK8o7OHW4pQ5fPkc3JpcilwuCdsEi+/NWvRO0fXaLvFnL2I/XgreKEfbl9OSItJ5I57ywEHbl819Bd2Lyf1ANYzFZ7VECKHiUQfrECh7JJcyFaHUgnl+ZvLIZGII6GkU5MMZqpIvx5ZQdo2eS/SDPRh7Q6x8Y5uT0fXsG+GrjLiaN3ln0i4aZQMCh79vWKJxzQ6oKjCXSQdm8QSABR1qRW5patIfBGed1BfH3C5I+H7Q7DBJ/bFiNmFN+tDF+yeB7W+PIp4nyD8LiZhnuswkhKqUp2SPuutb12rG2cILEnDv3/AGMjn61S5QH4wwadianXb8o06LJKnGQsabpdCPiLiUqGlqKMqy9JHVwDXxAX4xSsUYxcn77LcEHOcQLkqq7tPZAvtJUyoPI6TR1HQn0jlarTzxRV9O38P3nawZ4ZJPa+eCni5SsQQRS1TyrGFScbTO44KbTK2Z5ho0ylNK3Y9w5Rr9HafxJPK+3T4lWtz7Kgu/2MTxBmU1phFa6dIFbgVUagPP8AOO9p09u5dzy2t2ym76oGYPEP7XU1SWDXPO3/AEjVhl/ybe5k2pJNdDX8KYyrTf8AhBfElq/8sXyjvnRTHhpm/l48ScDQ+9Oew/lFLxz3j/5LfSK/Vmtf8uWl/qMbndZhkylJ3MxhyFCQK/vnFaXMpG/L+XGviaAZlLUFewrUBbsLQki5pS96xgh6OjlyOWa9vZbnV9+P4pFmXUSx+rCt3fj9/wCQpw/xYx+yJDU2I5d0YddpFgaeN2n2fVfyjRggs/tKmEsTm7UqSB4xh8OTOhDSwRncw40RAV9sP6e0fKkaMeizS/KVzlpcbttfLkyWZ8bMQRJBUn77ULf0jZfG8dPT+jlF7p8sxaj0pa24lSMjPxjMSSxJNySaknqTHUjBI488rb5PS3qIdFEmeMOVWMwmTqG1tc1qByELi0UL3z5Dk1kq2xDM/EO4ozsQNgSSB4DYRsjihD2UkZpZZz9ptlcw4hGZo6xW5IfawVGIsPRCHohD0QlD1gMdImBhRnwSJOiONhUidMUYr2FqmEcFmhqFdyErcgaiB3Cor6wI49j3R6/cfxW1T6HR+DM/VEch9fbSp20qQwuDcX+UPODz8SVUhW0lww/L4uw8s6ZoIYV7QFa+MCehyPmLKU0uqAc3PJU7UitUaiVrvc12jWsLgt3euSYVc6YnDeTmfPmNMB0rMvXZqKLfvrHN1Wa3GK+L/b/e46FeHGTXX2V9OTaYvLZSyyoQVaor471PIRU5yy2pPgxp+E1JdTjuPdsNOaVpuzEK+rUoFfu9YqzaO472+F1Xc7un9JNeoly+j7AqXMLkud6UFeZAAqTz6mOrj0rjBYI/F+5Nt/0vqY8mr5eV9ei974X9v6FXG4EBaAg9TzrzMdF4lGNLoch5G3YPx+BYCxBKcxvtsRGXOpYmsi7cP4MuxVNOInDuY6GJLaQbsTc+AHMxpwzUU2xHG3SCuJ4gmzpg0g9EXegEZ5t5HUUbcO3ArYXwTsWJ3alD5coXw/yL4s14U5yeV/IbmjJrDO4UFVANq0SgrSvO9OtYpyQyKSUKrq74/Z/Rc9DS44V62R15f6yH/aSVISmFu5rqZwajvXkYxT0s8uRvK+F0rp+vIJekMeKNYV9QFmGeTpv8SYzd1aD0Fo0Y9PCHRGDLrMmT2mDnnxeomRzIWmQyQjkRloNCNiy5xEGgMtpMBiCBWVsPCNkeiMcnyLSGBY1hAYyKM1Lm0ZpLk0RfAPrGcNCViEPQSEiQrCidFhGyyKFdrQYkkQs8PRXYoeJRExRNiUGwpkWbexmVN0YFXHVT+YsfKGi9rsZOjVYqck+UW1XT3iLkilmB5gi/rG2DTQWQLlE0J7aXNDqNjswPQWv4RXPysaD5Ou8MdiQNRutiep5/GsecjBy9b/tz8u36GrV5F4m3/r9+4zPBMmCsubfYJprXrvFuk1MFleOUGq6t9irJhbjvcrM7meVpNl/agNNFNFCNSsKEMQNhF2TLHPPw8PT80uyXlfd/oNii8C3z+S83+xz+bh3l1QqaqaHw5EA8o7mOKjGomSU3J2wbNmrXtGg6EFYb/wBhH7iDFp7Q6pZBNCKA7jp3iKp43zXKfYtjO6vqu4LODUP2lcV2CXobVUfvmIyYaknCT5j9uxrmpJpxXUKrUALKl+zBHM6phHPUfujwjR04iNi07k7lyaLKElpJLzDSUt2bnNPJE7vnErauDqRcYQ3S6fcxma44zZrzCKajYdBsq+QoIrfJw82Vzm5PuUtcCivcKzwKI5EZaDQLGkwaAITEIeiEHynoYhGjX5Vlc6cimXKZgRuBb1ix6nFBetJFC0uWb9WLDErg/Ebvolj+dwPhGeXpPF+W38EaYejcv5qQrZFhU/i4xa9JY1GF/F55+xjfzH/CYIe3k+hA0rLK7zz30Ar5QP8AzXzUQ/8AhLi2YCHMwkQh6IQmU0EL1IuByTKwrQ8WRu0PFcCy6jIcU9WIQWsQh7VAogYyXNzJNCNSGzDmK81P5Q8JuI3QP4UurIUYmTMdaEHsk1oQRyYcx84XUZGsU3Hyf2NOCnkXxOw5PplqoZqsw1GtgNV715xw5ZMuVKOFVFKr+HkXzhjjJzyPlu6CszDjdS1xSgAp1re0YXgm8lz5XvZbHNFQqPBSm5NQ1Xnv4x2MeeMY7apI5uSM5St8gTiHg1pg9ohGsDb8Q6Rqwa+KdMDxSSOcZngWRijJQjeojrKakuCoDYvLJfvE6D/LY/CBOKit3QuwpydFCcrgAo7G9diTSwYDyof6THKnJY8ql2fHz7fwddYpShw+nP8AP8luU0tF1O57Q3Pvleijqdu6tY2xVLkaWSGOPL/krY7NWnsARpRRREGyj8z3wmSVnPy6iWV+7siFsOBFG4q2irhV6QN7Cooc+ThrqYCzNdQvDfQGYjCFTQxfGaZU4NFcw9iiQCHoJDwiENTled4hJGhZrBVrQA0ELHT4pXJxViZNTlhJQUnRSl5nMZu25YH8RJhsbUWDJcl1CEqjbRp3IzJO6Y4yoG4LiZWsYjUeiEPAxCDtUQFD5cKxkMaHXQUSsMQ9AILEIPVIDZEh6rSBY1UGsmxzJ2feQkEqSQKr7rAjZh18jUQso7k0PB7XaO65DlkuakucdZ1gP71qtcinKht5Rh8eWKCxquOOn+69S2a8SdvuarSAIxWaNqSGQSvqx+mBZZt4AnEOBluh1IpPIkXEbdLllGXDMWaKs5VnuUKDUR2Z5N0S7Trkfw3gVIma1BUJ94AgX3ofDeOLqrnmwx7W2/gkej09LG38DnGbTw813AoGYkDagJsLdBSOqjzOeW6bl5lRJpERqymyWZiiYVQSC5MLZXKLAGsZsrpmjGrRcxM4SwaRXFOTLJPaCDPEw7Ro2uJRuUiHFYKm0NGdglCgeRFxWJECKIhC5qamkVpCxdIXJFOQ7DSGJ2hZySQYQbYXwqlKXtCRzO6LJYVV9y77RYu8aJT4EjIVioh4xCCViBPViEJ5cyghWgpkbGLRBtYgT1YhCWUKmAyJHUfo74Gl4iW2JxAJlg0VQaayN6kX0j4xzNXqXBer1N+DCm1YTzfI0TsykVF/lAHqefnHG8ecncm2eghgxqPqpGXfJ01XFD1H59Y3YdXOPezNm0OLJ2p+aOo/RrOIkNJYg6DVD/K29vGvrF+ecclTj8zmy08sLqXTszXvMA3MUKLYjmkUcRmSJdjQVpXvh8MJZJOC6oTJ6qUl0Y3D51JcHSwtSteVYmbFPG4xfV9B8ct6b7ID53nsrQaMKR0NNpJp8mPJNzZzrM80DtoUbmkdCa/Kupt02N2XszlNKwM3R7zJUn+QEIx/1H0jDkcVqPgtq+7/AGR1c8tmFpHI8RvGuJ5ufUghrFErEIE8qxmk6epijLC+SzHOuA7iJautoyxbTNTSaKGX4FdV4tnkdFUIKyTOAEv6QMVthycGadqmsbUqM42IQkki4hZPgi6h6VhlCBzuTCSj6lkjO8jRYkMsZ2aotD5i1FawVHiwOSuhgaJQbMvFxjFgEGmCE8IJB4iCnoYgkQIsAhJJa8BkXDO1ZdxH7DL8LLQby9RI6szEx5vVtyzSj5HodHjj4am+5TfiHV73OM/hm9TRUxU1WFViyKaI5IXL8a6MNJIPdGiM2uhTNKSqSNYuOnFR2qnvjVDVpcSRz5aKK5gZXiTOJqhlYmhvfqOcM8ieWOWPVcfIChUJY2ZGVxI4DKGI1Cm/nGrK25xyeX7mXG/VcfMoTM9mt2Sx9Y1ePJrqVqFMNZDMvqp7RuQBtfq+wit51C2uv2/k6GCk+efcjp+CwUs4eYJszU8+X7MiopLTTSijkKn5b0rHMyZGmpP5f739zZLFOfDOCZlK0uR32PIjqO6OxjlcbPPZ4OEqZTMOUnqRCF3ASKtWK8kqQ0FbDpUhbRk4bNXKQuWPU0pEmiQYHz6Wwc1rTlGnA1RRlT3AmNAgoEKBssYWWSbQs3SDBWwtMmUVQeQgSdpIWEabZC2JpcRWoWWPJQgxtqwfD5J4nBEcaYfw0J4jBohSC1iEErEJQqxAMdBQD0EgkEJ6IQURAM3eEx6nByBquqOn9Suxp/lZT5x53Vwa1EvfTPQaKaeBfMBNj2JqIihRdvCmXY1qwGhkzZ5VgwwDneK2NdhGbP0xLAyjicP9YBXSCo95mso8WOx+MNG07QkpRqpGOzbhQq32Ka7+6NerxA3I8o349XJcS+pz8mni7lD6d/7KeMyKdhwGmyhLDGgJAa/Q0rQ9xi2GR5nUHYjxbFukiJ8wlqAKzGbkB2FHWpNSB5Rb+Dm/aItTGPsjznc00AYAH7guDXYsTv52hM2kx44bpv8An4I1YdXknLav98QZmOJ9u9BWwC1ArLttt7g79vCM2mzfh1Uuj5fn/f3L9ViWpVLr0939fYEML0jtJpq0eelFxdMkWIVhjK6RmymnEXsTNNLRVFFkmRyW036wWrAuCXHqJqX3ECD2sM1uRlZiUNI3JmUdLSsRugJWX5S6RaKXy+S32U6IXck3i1ozJiTjaBFcjtlYtFlEolWSxvSDTEc0uCrFBceiAPRAj0hWKyRlho9APhjDDERNLlAgwrZCGkElnqRCF7AVdHkg0JGtP8ajYeK19BGHWQ6ZPLr8GbtHk5ePz6fEqLPJIepBFFmD4awP3fxjHtVV9DapO7+pq8kKg6m8u/vihmnca/A4u1QYrGTLeBf2rhCdzv0AuSfAVgbQynStmvSSiS1ZVsP4YP3R+Ij8bbk+UXRiYJSbdsFY6+kS/fYEtXc35HoOY7xDUlywbmewk1cXIfC4j3KkAoD726sGsTQ8xCxm8clJF9Karuce4pyr6nOaX2nNAaUPu1t2zanhXaO9i1WOSTjz9zmzwSTpjcHKRgSJMkHmXmdo16Fj+UGWs0/e3/8ALFWlzPp9ynmUiYDUPQ/+HM1fIxSpaOXRR+a/lF6eph3f1/hgys0+9V6cz7wHneDHDGPrYePcuj+X7oMsksirJz7+6+YVwmVMSK8wCO8EVB9DDeOnG0ZXp3GVM0GX5ODXoNz0A3MZpTlJ7Y9TVhwJ/BFdZVTeGsqoq5lY2hsYmQak06ST0guPJE+ADiXBNo1xjSM75diyplIjQE6JpU2Ao8klP1SYS+cRsSKsTFJaBF8jyRRC3i0DfAVViopQWi5cGJpSdgUxiOgJEIKIhByGAwMs0rEXCK5O2RssOFMsSE7JiuT5GXQYJJvB3AojAgijpdQQRYggg9CLiFkk1TGi2naCeJy7UyzkFpgqRyDbMvhX4Ujj+w3jfb7djtWpxWRd/v3CGAwTsQgVieQAJPoOUVya6jwt8GlwSFUIIIOxrFfUttos5TjApcneiinMqWHtPgAPAmHiuSvLLg1cnMVZdTMbnsgUItzqfEesW3TpGUjzXEVQS1szi5H3VPyJv5QEtzthfCIZy4iWAuuXSg7TDt7X7K7+gheH2HTcSnmWSriJelhVlJozGusNQ0N+zTYbQniZIew6+BrjKGTia/oxGOyMo5WhBFip5QYZ33HnhS6FKdlL0JUaqb03HlFviRKPDk+hDlwdWH2Yda6XRlqR3qdwYdS2+tF0yyFxq1a7r+DXYrAn2OGZV7RQy6DeqtYeNWMacuRbt3Zr+inJicqpclbNcQJQGHUgsP4rDYt+BT0BqD1NYbHwm/MqzTUIrHH5lNVrAszkOMwwPKDGVCyVg7MZelCItxu2V5OImdaWY2WjKmNAgkLOGFokVyJkfBK03lEcQKToim6j4RFHuHd5kAEEZsILMttFxlceeoPnyqRhTs2IggjDqQAD0WIBstUtEELGDwureEnOizHCyxiJOkUEJGVvkeUaXBCshmWwhtyTBtbRXWSRyh3KytRL+AwDTHVFBLMQABuSdhFU5UWxjZ1nhfg2UC+GcFmTS0+ZWyMRUJKHWm5PTyjmZZqbs3Y04Ro6Bg8pkSF0ypaoOZAuf8TbnzjNkiixSYMzjEygCBQxnaXY3YVLrI5lxQZYJZey3IrYgxdjckWZIRkU8TmIEsSwe1pC6lAA1kduZT/EWPpG+CdWcmVXSCmV5qyKWd9Ra5JAsOQtyAEBwVUSwhkWboQK6S9GLJ97cMKVO9G5wkotWMmmGUVnY6dKVCsQBViCBuT3WtTaKqSQ9u+AfnWViYAAftVFBQ6zQH73UfGFruXRy1wzFz5ExHowKsOY5ju6iDSZdGXkFsChprWzAVDDeq3B+ESMa4HlupsWdneJXWVckvXUTc1IpUd8a4ypbWv6+BkWVroZtMO2rtb9eoh8c69UoyLd6xamoVpFqdlLLOGIIvCvgZFPOsDVbCGxypi5IWjNiRSNW6zLtognShzhlJitIiQAc40QfmZ5rngXWvOH3RE2y7CnELB3onhyIvaJC3EfbId9YWG3oHhsZiptYwxVF75KhhxiWSlYVsVliXLobwt2Qn09IO4lD5VQaQrqgxuwpOkELFCkrNDToZgiwtSDOhYNo1WR8Bz8XRwBLQ/fet/8Ki58bDvjPPUqHC5LVi3cmsybglMDPWa80TOy+kaNNCFLM252QMPEiM71DyKqosjiUXYd4JnUw0zFTWvPmvM8gdKj4H1imU0rNCg5NJAbiHjLtFQaDuiipT5ZtjGGNe8zc/iEEVrDrGF5UYnOs31E3jRGAjmCsNmpU0N/mI0RlXDMmTGnyg3LzNGWhboD3DnDWU0G8vxMuzK1G6i/Tl5DY8oDTAF8JnrqT7Yqy0ADJUGik+96ixit4xtxpcsx8uYjFNLgswFLECpN+dOkVSQ6YzMcGkxQXZSD7tOhG9NybfGA1T4GjNrkpphQkpgqmtCFNu1Xz+G/dDJpdTc9XGWNxa5M9iJZHK/SLE7OeynNmQaBY8sGW0WxlYkoghcQytQ8ou4aKuUwvJxQYXit8FqdmfzeWFJI2i/HK+DPkjXJn8SxMa4tIyuyuBDWiCFIloljTLicBsT2YicB3HvZjrE4JuYhmGKLDtRHrg7htoVyqXqBEVZJUSMbYaXKtQtvFHi0W+FZXOVzQ4VVJJIAAG5Owg+Kqti+G0zo+RfR7JlBHx8w62ppkyze+2pt/SnnGPJqZPiJfDCurNicny1RpGHltYb1buFWJjPvl5l21F3L+FsAtGXDyyw5kVFd/dNhDbpPq2LtXkFJuNQHQtC21qUW6ih6G9adxhG0hkmCM4dSCW7X2cxSw2T2lBty2p5wqlyGjl8vOpktfq7H+HVR4cj8YM8XrWa8eX1KMnnOP7ZNYvhHgolJ2DfrpJ3h9oNwIx7nWRDxQeSGSGrYQWLYTYEC4hEOqGSiR7pK+BPy2htw/hQZfwGYzlamvUP5rH1EHeI9N5M02X5wFHvNKbkbU/Q/CBwymUJQ6o1GX59QL7QfhBmIAagDSC6267/OEcfICZoRODmusUIN0HgRqJ5b9IqaoeyriJalSqpb8Taiorcb1Yb7xEn1IAM2yhAK6wp82WvME7i/OLIzaFaKcnJp42Wo6ggiD4iXKIl2K2K4fxDVIktXyh45ooWUCguBxEuuqWw8QYZ5IPuBRaA+PSY5I0mLoTUSuUWypLy5zYgw7zIRYixLyu+0K8w3goo43DMpoBFkciYksdFJ5T9IsWRFbgxvsW6QfERNg76s/SB4qJ4bIVlsYTcChZci9Im8Icy3BmhA3iicy2EDRZPh2UXMUzlZdFUa3htlR2mkAtLWqA9TavlFGS3SLEinjM1f2pdmJYmtfH5QdvBO5Nl2dlG1GhPLVtXrt4elNoDgRBZ+Jn0FTNAFD2UBJJI/ERUesJsGM5jeLJssaZaCnZA1ksQQFFe/bn1grEmBugW/EmMZtTOWBFCtAARWtKDxh1jSFsDcS4iawEyUCQNz95R+Fhzp1i1QT4BvaMkJru1zfvg0kHc2EsNhmDCgr4Qtl2Ncl/HyJeIKkChUUJ21GsC6GyzUn6vb9SzgsEFtpr3wrdicsZjJa3BERCsHYjCGlVhhozop4fUDBaL4zQewFWsRUd8KXwl2NTgsJpSkthq30sRTyJ2gbvMozYsa6On5CS8UyOupTLZdtJoPhZoKaZkaoMYPNZuo6jYi2kHX+ht0rsIm1EsuYfMpbMZezci1Qe/tc/A98SmkAvShVgaMac1pfe1NqfGEoYISnB7N+dCQQRavmLGEaCUMRTVpY0qLV57QGiAXN8tUAsgFR8YibCD8JJlmUWNNWoUrsVIv4GtPWGbaZZUXG+5EmGvYA+AJ/ODuK6IcTl7VqUHof1gqYHEpNgr+6PQ/rDbxdo1suPNR6RPEJtIP+xP5B8f1hvG94NiB0jIZ1uzFjyopWNiz+F59a0ERZ0R4mGMlyGYl3iuWVPoWRhRoJOWMNrnuhNyHoI4fh2c1xQed/SEeRDbRMRwrNrXUD/Sx+QMRZUTaR/7MTCfep4S5h/5RA8UlBGXwyoFy5P8Aw3/tgb2NwUp3DMvnr/8ATmf2xPEYtIp4nI5A3dh/RM/SDvkTail/2bg+c+h/rBHrBU8nYXbEiXI8vJr7eWOpIH6CH8XJ3iDZHzDMnKsvAoMXKPmBFcsmR9h0o+ZFicpyz7+IlV6hyG+G8KpZPIPqor4fIMCx7GLY9wIp6lYjnNdUHgsNw5gFBMybq7mmKPiCIm+b6IPAFxeT5aD2cTo7hNVh/qBPxh1LJ5CPaVTkeB+7i9+pVvkBDbp+Q6mkHMBl+Blgfaq3eTX4UhG5vsN4r7MNYGVhOTp8f0hLkKqHZhh8Ow01VgfHy5Q0bGpGQzPKpkskyZmtfwk3Hd3xbGfmVuILGdTFOmYKAWqQfmbjyIi1NFbQfynNDvLdgSORJHkDWI0iB/DYx/erU7VrXxvy9axWwiuzE11DalDceF7fCEYxRzLFKiGqrt923wt8oiiBlLIsNMmSyymgLd/Unl4xJtJlkVwEjg54/wB6fifnFe5DUDcdhMRW01fMP+TCCpR8hHZTm4GfzeWeVaTR/wDLB3R/1fwCmIuGmDdl8hM/+yJuRKJPqx6/6m/ugbiUX/ro2VT4kAV+FYNLuAtyvaPZiFHXSR6HnCtrsEJYXLErzc9Qun5wrkw0GMMCooG006BQT6iphbDROuIff2z+kuJYKJEmnnNmnySnrSJyDgty57/jen/ln8onILiIcRM/Gw76J89MSmS4jmM8bMT46P7YNMm6J77c/wC8p5IfyiUybokn1SYfecN3GWn9sSmDcgTjOFpMz31SvcssfJawU5oNxAeO4Fw9CEd0PeNQ9KQVmkuodqAM36OJhumIQjvQ/lWLPxHmhfD95VfgDGL7s2WR3Ej4EQfxEfImx+ZWncB42leyfAg/lB8eBNjKzcF4nmv+lv7YPjRJsZAeHZin+Io8VP6QfFQNrLMnJZn/AHsv4/pA8RB2sKYXBzF+/L9f+kI5IZEs32gvVfURFTG5KOIxT12r6frB4A2MwmN0mjSQ9eoqfziNX3BZJipUtu0uHmSm6qlF8xsYKtdwMjlZq6WdW8aGkPwxRXzocqkwKJZVluZzfazAiDlckxG66BSNJh87w6KFVlAUUFm/dYocJMtTQsziKUR/ESp61gbJeRNxH9e5gju7J/ugUCyBsd3r/lb9YNAsh+uGvvKf6T+sSiWTLih+Mf5f/wBwKDZ7BzWpud+phmKgnhzsYAwQU1IreGSK5MIYaWKbDfpBaKk2E9ADWA90Q1CpssaRUW/dIIEWEFjEASECIQklKKbQAlcMam/OCEgzMURiLHqLH1iEXUmwLEoKnlAILT3oDQU2DsZba3haKZpF8Gwe0w03PrCFgmAc2FTziMhZmsaG5iEI557AiEGth0KmqKbHcAwbIB5mEl1PYT/KIa2RGXzQUcgWFOVovj0AZ+ax1G8MKxcI5qLmIwGoXYeAhaINZza59YAUSLfe8QKIVUGtREIQvLW9h6CJZCtMQU2HpBARExCMazHrEIRBjXeIE8GPWIQ//9k='),
              ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],

              ),

              Text(
                'NAME:',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Chun-li',
                style: TextStyle(
                    color: const Color.fromARGB(255, 251, 209, 57),
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                'Current Ninga Level:',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjalevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10.0),
                 Text(
                  'chun.li@theninja.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0

                  ),
                 )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Textwidget extends StatelessWidget {
  final String txt;
  const Textwidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      txt,
      style: TextStyle(fontSize: 30.0, color: Colors.grey, letterSpacing: 2.0),
    ));
  }
}
