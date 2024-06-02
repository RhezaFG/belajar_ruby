class CobacobaController < ApplicationController
  def index
    @cobacoba1="Belajar Mengaji" 
    @cobacoba2="Daftar Iqro'" 
   @data = Cobacoba.all
  end

  def detail
      @data = Cobacoba.find_by(id: params[:id])
  end
  def input

  end

  def create
    @data = Cobacoba.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "Data tersimpan!"
    redirect_to("/cobacoba")
  end  
  def edit
    @data = Cobacoba.find_by(id: params[:id])
  end

  def update
    @data = Cobacoba.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi] 
    @data.save
    flash[:pesan] = "Data terupdate!"
    redirect_to("/cobacoba")

  end
  def delete
    @data = Cobacoba.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "Data terhapus!"
    redirect_to("/cobacoba")
  end
end