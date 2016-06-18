class VotesController < InheritedResources::Base

  def new
    @idea = find_idea
    @vote = @idea.votes.new
  end

  def index
    @votes = find_idea.votes
  end

  def show
    @vote = find_vote
  end

  def edit
    @vote = find_vote
  end

  def update
    @vote = find_vote

    if @vote.update(vote_params)
      redirect_to(@vote)
    else
      render('edit')
    end
  end

  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to root_url, notice: 'vote was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def find_vote
    @vote = find_idea.votes.find(params[:id])
  end

  def find_idea
    @idea = Idea.find(params[:idea_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vote_params
    params.require(:vote).permit(:idea_id, :state)
  end

end

