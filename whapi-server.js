const express = require('express');
const app = express();
app.use(express.json());

app.post('/whatsapp', (req, res) => {
  console.log('Mensagem recebida do Whapi:', req.body);
  res.status(200).json({ status: 'ok' });
});

const port = process.env.WHAPI_PORT || 3001; // porta separada do n8n
app.listen(port, () => console.log(`Servidor Whapi rodando na porta ${port}`));