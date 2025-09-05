/*Gato*/
object tom {
    var energia = 50
    
    method velocidadMaxima() = 5 + (energia / 10)
    method tomCorre(metrosARecorrer){energia -= metrosARecorrer / 2}
    method tomCome(raton){energia += 12 + raton.peso()}
    
    method puedeCazar(distancia){return energia > (distancia/2)}
    method cazar(elRaton,distancia){
        if(self.puedeCazar(distancia)){
            self.tomCorre(distancia)
            self.tomCome(elRaton)
        }
    }
}
/*Ratones*/
object jerry {
    var edad = 2
    method peso(){edad * 20}
    method cumpleAños(){
        edad += 1
    }
}
object nibbles {
    method peso(){35}
}
object geraldine{
    var edad = 3
    method peso(){edad * 20}
    method cumpleAños(){
        edad += 1
    }
}