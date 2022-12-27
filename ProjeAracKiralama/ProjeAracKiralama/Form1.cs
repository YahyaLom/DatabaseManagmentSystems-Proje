using Npgsql;
using System.Data;

namespace ProjeAracKiralama
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        NpgsqlConnection baglanti =new NpgsqlConnection("server=localHost; port=5432; Database=Proje1; user ID=postgres; password=yahya1130");
        private void Form1_Load(object sender, EventArgs e)
        {
            string sorgu2 = "select \"tblAraclar\".\"aracID\", \"tblAraclar\".\"aracSinifi\",\"tblA1Arac\".\"aracMarka\",\"tblA2Arac\".\"aracMarka\",\"tblB1Arac\".\"aracMarka\",\"tblB2Arac\".\"aracMarka\",\"tblCArac\".\"aracMarka\",\"tblDArac\".\"aracMarka\",\"tblEArac\".\"aracMarka\",\"tblFArac\".\"aracMarka\" from public.\"tblAraclar\" " +
                "LEFT OUTER JOIN \"tblA1Arac\" on \"tblAraclar\".\"aracID\" = \"tblA1Arac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblA2Arac\" on \"tblAraclar\".\"aracID\" = \"tblA2Arac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblB1Arac\" on \"tblAraclar\".\"aracID\" = \"tblB1Arac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblB2Arac\" on \"tblAraclar\".\"aracID\" = \"tblB2Arac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblCArac\" on \"tblAraclar\".\"aracID\" = \"tblCArac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblDArac\" on \"tblAraclar\".\"aracID\" = \"tblDArac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblEArac\" on \"tblAraclar\".\"aracID\" = \"tblEArac\".\"aracID\"" +
                "LEFT OUTER JOIN \"tblFArac\" on \"tblAraclar\".\"aracID\" = \"tblFArac\".\"aracID\"";
            NpgsqlDataAdapter daa = new NpgsqlDataAdapter(sorgu2, baglanti);
            DataSet dss = new DataSet();
            daa.Fill(dss);
            dataGridView2.DataSource = dss.Tables[0];

        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("insert into public.\"tblMusteri\" (\"musteriID\",musteriadi,\"aracID\",musterisoyadi) values (@p1, @p2,@p3,@p4)", baglanti);
            komut1.Parameters.AddWithValue("@p1", int.Parse(txtID.Text));
            komut1.Parameters.AddWithValue("@p2", txtAd.Text);
            komut1.Parameters.AddWithValue("@p3", int.Parse(txtAracSinifi.Text));
            komut1.Parameters.AddWithValue("@p4", txtSoyad.Text);
            komut1.ExecuteNonQuery();//deðiþiklikleri veri tabanýna yazdýk.
            baglanti.Close();

            MessageBox.Show("Musteri ekleme islemi basarýlý bir sekilde gerceklesti.");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from public.\"tblMusteri\" ";
            NpgsqlDataAdapter da= new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];

            string sorgutriggermo = " select * from tblkasa";
            NpgsqlDataAdapter datrgmo = new NpgsqlDataAdapter(sorgutriggermo, baglanti);
            DataSet dstrgmo = new DataSet();
            datrgmo.Fill(dstrgmo);
            dataGridView3.DataSource = dstrgmo.Tables[0];

            string sorgutrigger = " select * from tbltoplammusteri";
            NpgsqlDataAdapter datrg = new NpgsqlDataAdapter(sorgutrigger, baglanti);
            DataSet dstrg = new DataSet();
            datrg.Fill(dstrg);
            dataGridView4.DataSource = dstrg.Tables[0];

            
        }

        private void btnTemizle_Click(object sender, EventArgs e)
        {
            txtAd.Text= "";
            txtAracSinifi.Text = "";
            txtID.Text = "";
            txtSoyad.Text = "";
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut2 = new NpgsqlCommand("Delete from \"tblMusteri\" where \"musteriID\"=@p1", baglanti);
            komut2.Parameters.AddWithValue("@p1",int.Parse(txtID.Text));
            komut2.ExecuteNonQuery();
            baglanti.Close();

            MessageBox.Show("Musteri silindi","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Stop);


        }

        private void btnDüzenle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update \"tblMusteri\" set \"musteriadi\"=@p2, \"aracID\"=@p3, \"musterisoyadi\"=@p4 where \"musteriID\"=@p1 ",baglanti);
            komut3.Parameters.AddWithValue("@p1", int.Parse(txtID.Text));
            komut3.Parameters.AddWithValue("@p2", txtAd.Text);
            komut3.Parameters.AddWithValue("@p3", int.Parse(txtAracSinifi.Text));
            komut3.Parameters.AddWithValue("@p4", txtSoyad.Text);
            komut3.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Musteri güncellendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtID.Text = dataGridView1.CurrentRow.Cells["musteriID"].Value.ToString();
            txtAd.Text = dataGridView1.CurrentRow.Cells["musteriAdi"].Value.ToString();
            txtAracSinifi.Text = dataGridView1.CurrentRow.Cells["aracID"].Value.ToString();
            txtSoyad.Text = dataGridView1.CurrentRow.Cells["musteriSoyadi"].Value.ToString();
        }

        private void txtID_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView4_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string sorgutrigger = " select * from tbltoplammusteri";
            NpgsqlDataAdapter datrg = new NpgsqlDataAdapter(sorgutrigger, baglanti);
            DataSet dstrg = new DataSet();
            datrg.Fill(dstrg);
            dataGridView4.DataSource = dstrg.Tables[0];
        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            /*string sorgutriggerm = " select * from tbltpara";
            NpgsqlDataAdapter datrgm = new NpgsqlDataAdapter(sorgutriggerm, baglanti);
            DataSet dstrgm = new DataSet();
            datrgm.Fill(dstrgm);
            dataGridView3.DataSource = dstrgm.Tables[0];*/

        }

        private void btnArama_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlDataAdapter dd = new NpgsqlDataAdapter("Select* from public.\"tblMusteri\" where \"musteriadi\" like '%" + txtAd.Text + "%'"  , baglanti);
            DataSet dds = new DataSet();
            dd.Fill(dds);
            dataGridView1.DataSource = dds.Tables[0];
            baglanti.Close();
        }

    }
}