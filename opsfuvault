package main  
  
import (  
   "crypto/aes"  
   "encoding/hex"
   "bufio"
   "fmt"
  )  
  
func main() {  
  
//either 16, 24, or 32 bytes to select AES-128, AES-192, or AES-256
   key := "myverystrongpasswordo32bitlength"  
   plainText := "Hello 8gwifi.org"  
   ct := Encrypt([]byte(key),plainText)  
   fmt.Printf("Original Text:  %s\n",plainText)  
   fmt.Printf("AES Encrypted Text:  %s\n", ct)  
   Decrypt([]byte(key),ct)  
}  

func GetPassword(){
   var age int
    fmt.Println("What is your age?")
    _, err: fmt.Scan(&age)

    //reading a string
    reader := bufio.newReader(os.Stdin)
    var name string
    fmt.Println("What is your name?")
    name, _ := reader.readString("\n")

}
  
func Encrypt(key []byte, plaintext string) string {  
   c, err := aes.NewCipher(key)  
   if err != nil {  
      fmt.Errorf("NewCipher(%d bytes) = %s", len(key), err)  
      panic(err)  
   }  
   out := make([]byte, len(plaintext))  
   c.Encrypt(out, []byte(plaintext))  
  
   return hex.EncodeToString(out)  
}  

func Decrypt(key []byte, ct string) {    
   ciphertext, _ := hex.DecodeString(ct)  
   c, err := aes.NewCipher(key)  
   if err != nil {  
      fmt.Errorf("NewCipher(%d bytes) = %s", len(key), err)  
      panic(err)  
   }  
   plain := make([]byte, len(ciphertext))  
   c.Decrypt(plain, ciphertext)  
   s := string(plain[:])  
   fmt.Printf("AES Decrypyed Text:  %s\n", s)  
}